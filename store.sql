CREATE TABLE IF NOT EXISTS Items (
	item_id INTEGER PRIMARY KEY,
	category_id INTEGER NOT NULL,
	producer_id INTEGER NOT NULL,
	item_name TEXT NOT NULL ,
	price DECIMAL NOT NULL,
	item_art TEXT NULL
);
CREATE TABLE IF NOT EXISTS Producers (
	producer_id INTEGER PRIMARY KEY,
	producer_name TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS Categories (
	category_id INTEGER PRIMARY KEY,
	category_name TEXT NOT NULL
);

INSERT OR IGNORE INTO Items (item_id,category_id,producer_id,item_name,price,item_art)
VALUES(1,1,1,"MOUSE",23.99,NULL),(2,2,2,"KEYBOARD",42.99,NULL);

INSERT OR IGNORE INTO Producers (producer_id, producer_name) VALUES(1,"Logitech");
INSERT OR IGNORE INTO Producers (producer_id, producer_name) VALUES(2,"Trust");
INSERT OR IGNORE INTO Producers (producer_id, producer_name) VALUES(3,"Hama");
INSERT OR IGNORE INTO Producers (producer_id, producer_name) VALUES(4,"Microsoft");
INSERT OR IGNORE INTO Producers (producer_id, producer_name) VALUES(5,"Hp");
INSERT OR IGNORE INTO Producers (producer_id, producer_name) VALUES(6,"Adata");
INSERT OR IGNORE INTO Producers (producer_id, producer_name) VALUES(7,"WD");
INSERT OR IGNORE INTO Producers (producer_id, producer_name) VALUES(8,"Seagate");
INSERT OR IGNORE INTO Producers (producer_id, producer_name) VALUES(9,"LaCie");
INSERT OR IGNORE INTO Producers (producer_id, producer_name) VALUES(10,"Trascend");
INSERT OR IGNORE INTO Producers (producer_id, producer_name) VALUES(11,"SanDisk");
INSERT OR IGNORE INTO Producers (producer_id, producer_name) VALUES(12,"Kingston");
INSERT OR IGNORE INTO Producers (producer_id, producer_name) VALUES(13,"GoodRam");
INSERT OR IGNORE INTO Producers (producer_id, producer_name) VALUES(14,"Verbatim");
INSERT OR IGNORE INTO Producers (producer_id, producer_name) VALUES(15,"Edifier");
INSERT OR IGNORE INTO Producers (producer_id, producer_name) VALUES(16,"Microlab");
INSERT OR IGNORE INTO Producers (producer_id, producer_name) VALUES(17,"Genius");
INSERT OR IGNORE INTO Producers (producer_id, producer_name) VALUES(18,"Esperanza");
INSERT OR IGNORE INTO Producers (producer_id, producer_name) VALUES(19,"Razer");
INSERT OR IGNORE INTO Producers (producer_id, producer_name) VALUES(20,"Plantronics");
INSERT OR IGNORE INTO Producers (producer_id, producer_name) VALUES(21,"Antilion");
INSERT OR IGNORE INTO Producers (producer_id, producer_name) VALUES(22,"Redragon");
INSERT OR IGNORE INTO Producers (producer_id, producer_name) VALUES(23,"Oem");
INSERT OR IGNORE INTO Producers (producer_id, producer_name) VALUES(24,"Asus");
INSERT OR IGNORE INTO Producers (producer_id, producer_name) VALUES(25,"Gembird");
INSERT OR IGNORE INTO Producers (producer_id, producer_name) VALUES(26,"Canyon");

INSERT OR IGNORE INTO Categories (category_id, category_name) VALUES(1,"Mouse");
INSERT OR IGNORE INTO Categories (category_id, category_name) VALUES(2,"Tastaturi");
INSERT OR IGNORE INTO Categories (category_id, category_name) VALUES(3,"HDD");
INSERT OR IGNORE INTO Categories (category_id, category_name) VALUES(4,"SSD");
INSERT OR IGNORE INTO Categories (category_id, category_name) VALUES(5,"USB");
INSERT OR IGNORE INTO Categories (category_id, category_name) VALUES(6,"Boxe");
INSERT OR IGNORE INTO Categories (category_id, category_name) VALUES(7,"Casti");
INSERT OR IGNORE INTO Categories (category_id, category_name) VALUES(8,"Microfoane");
INSERT OR IGNORE INTO Categories (category_id, category_name) VALUES(9,"Mousepad");
INSERT OR IGNORE INTO Categories (category_id, category_name) VALUES(10,"CamereWe");