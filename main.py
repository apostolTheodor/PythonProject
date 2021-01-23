from flask import Flask, render_template
from flask import g
import sqlite3
from extras.extras import read_data,generate_commands
import jinja2
import os
app = Flask(__name__)
app._static_folder = ''
DATABASE = 'DB/store.db'
def init_db():
    with app.app_context():
        db = get_db()
        with app.open_resource('scripts/store.sql', mode='r') as f:
            db.cursor().executescript(f.read())
        db.commit()
def get_db():
    db = getattr(g, '_database', None)
    if db is None:
        db = g._database = sqlite3.connect(DATABASE)
    return db
def create_query(file):
    query = ""
    file1 = open(file, 'r')
    Lines = file1.readlines()
    print(Lines)
    for line in Lines:
        query += line
    print (query)
    return query
def query_db(query, args=(), one=False):
    cur = get_db().execute(query, args)
    rv = cur.fetchall()
    cur.close()
    return (rv[0] if rv else None) if one else rv

@app.route('/')
def home():
    return render_template("home.html", data = query_db('select * from Categories'))
@app.route('/items/<item_id>')
def items(item_id):
    target_value = 1
    with app.app_context():
        for item in query_db('select * from Items;'):
            if item[0] == int(item_id):
                target_value = item
                break
    return render_template("items.html", item = target_value)

@app.route('/all')
def all():
    return render_template("all.html", data = query_db('select * from Items;'),producers = query_db('select producer_name from Producers;'))

@app.teardown_appcontext
def close_connection(exception):
    db = getattr(g, '_database', None)
    if db is not None:
        db.close()

if __name__ == '__main__':
    init_db()
    #generate_commands(read_data('Extras/data.txt'), "Stock")
    app.run(port=5000,debug=True)
