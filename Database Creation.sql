CREATE DATABASE Equipment;
USE Equipment;

CREATE TABLE Employee(
id INT auto_increment NOT NULL,
PRIMARY KEY (id),
fio VARCHAR(100) NOT NULL,
position VARCHAR(100));

CREATE TABLE Room(
num INT NOT NULL,
PRIMARY KEY (num),
responsible int NOT NULL,
FOREIGN KEY (responsible) REFERENCES Employee(id));

CREATE TABLE Exploitation(
id INT auto_increment NOT NULL,
PRIMARY KEY (id),
room INT NOT NULL,
FOREIGN KEY (room) REFERENCES Room(num),
responsible int NOT NULL,
FOREIGN KEY (responsible) REFERENCES Employee(id),
dt_start DATETIME NOT NULL,
dt_end DATETIME NOT NULL);

CREATE TABLE Warehouse(
id INT auto_increment NOT NULL,
PRIMARY KEY (id),
descr VARCHAR(1000));

CREATE TABLE Equipment_type(
id INT auto_increment NOT NULL,
PRIMARY KEY (id),
type_name VARCHAR(60) NOT NULL);

CREATE TABLE Equipment(
inventory_num INT NOT NULL,
PRIMARY KEY (inventory_num),
room INT,
FOREIGN KEY (room) REFERENCES Room(num),
warehouse INT,
FOREIGN KEY (warehouse) REFERENCES Warehouse(id),
equipment_type INT NOT NULL,
FOREIGN KEY (equipment_type) REFERENCES Equipment_type(id));

CREATE TABLE Detail_type(
id INT auto_increment NOT NULL,
PRIMARY KEY (id),
type_name VARCHAR(60) NOT NULL);

CREATE TABLE Detail(
id INT auto_increment NOT NULL,
PRIMARY KEY(id),
manufacturer VARCHAR(60),
model VARCHAR(60),
detail_type INT NOT NULL,
FOREIGN KEY (detail_type) REFERENCES Detail_type(id),
equipment INT,
FOREIGN KEY (equipment) REFERENCES Equipment(inventory_num),
warehouse INT,
FOREIGN KEY (warehouse) REFERENCES Warehouse(id));