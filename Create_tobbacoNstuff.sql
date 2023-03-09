CREATE DATABASE TobbacoNstuff;

CREATE TABLE Province(
id_Province INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
Province VARCHAR(50)
);

CREATE TABLE City(
id_City INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
City VARCHAR(50)
);

CREATE TABLE Costumer(
id_Costumer INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
email VARCHAR(50),
tel INT,
BirthDate DATE,
id_Province INT,
id_City INT,
FOREIGN KEY (id_Province) REFERENCES Province (id_Province),
FOREIGN KEY (id_City) REFERENCES City (id_City)
);

CREATE TABLE Promotion(
id_Promotion INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
percentage DECIMAL,
cumulative BOOL
);

CREATE TABLE Packaging(
id_Packaging INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
packaging_type VARCHAR(50),
packaging_cost DECIMAL(19,2)
);

CREATE TABLE Tax(
id_tax INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
tariff DECIMAL(19,2),
deductible BOOL,
actionable BOOL
);

CREATE TABLE Product(
id_Product INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
brand VARCHAR(30),
price DECIMAL(19,2),
origin VARCHAR(30),
id_tax INT,
FOREIGN KEY (id_tax) REFERENCES Tax(id_tax)
);

CREATE TABLE Sale(
id_sale INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
id_Costumer INT,
id_Product INT,
id_Promotion INT,
id_Packaging INT,
quantity INT,
cost DECIMAL,
IVA DECIMAL,
type_of_sale VARCHAR(30),
date_of_sale DATE,
FOREIGN KEY (id_Costumer) REFERENCES Costumer (id_Costumer),
FOREIGN KEY (id_Product) REFERENCES Product (id_Product),
FOREIGN KEY (id_Promotion) REFERENCES Promotion(id_Promotion),
FOREIGN KEY (id_Packaging) REFERENCES Packaging(id_Packaging)
);