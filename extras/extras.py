def read_data(filename):
    file1 = open(filename, 'r')
    Lines = file1.readlines()
    all_data = []
    for line in Lines:
        data = line.split(",\t")
        data[1] = data[1][:-1]
        all_data .append(data)
    return all_data

def generate_commands(data,table):
    if table == "Producers":
        print(data)
        for line in data:
            id = line[0]
            name = line[1]
            command = "INSERT OR IGNORE INTO Producers (producer_id, producer_name) VALUES(" + id + ",\""+name+"\");"
            print(command)
    if table == "Categories":
        for line in data:
            id = line[0]
            name = line[1]
            command = "INSERT OR IGNORE INTO Categories (category_id, category_name) VALUES(" + id + ",\""+name+"\");"
            print(command)
    if table == "Items":
        print(data)
        for line in data:
            id = line[0]
            category = line[1]
            producer = line[2]
            name = line[3]
            price = line[4]
            ext = line[5]
            command = "INSERT OR IGNORE INTO Items (item_id,category_id,producer_id,item_name,price,item_art) VALUES(" + id +","+category+","+producer+",\""+name+"\","+price+",\""+name+ext+"\");"
            print(command)
    if table == "Stock":
        print(data)
        for line in data:
            id = line[0]
            available = line[1]
            command = "INSERT OR IGNORE INTO Stock (item_id, available) VALUES("+id+","+available +");"
            print(command)