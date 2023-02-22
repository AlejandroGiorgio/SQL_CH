CREATE DATABASE TobbacoNstuff;

CREATE TABLE Provincia(
id_Provincia INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
Provincia VARCHAR(30)
);

CREATE TABLE Ciudad(
id_Ciudad INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
Ciudad VARCHAR(30)
);

CREATE TABLE Cliente(
id_Client INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(30),
last_name VARCHAR(30),
email VARCHAR(30),
telefono INT,
BirthDate DATE,
id_Provincia INT,
id_Ciudad INT,
FOREIGN KEY (id_Provincia) REFERENCES Provincia (id_Provincia),
FOREIGN KEY (id_Ciudad) REFERENCES Ciudad (id_Ciudad)
);

CREATE TABLE Promocion(
id_Promotion INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
percentage DECIMAL,
cumulative BOOL
);

CREATE TABLE Embalaje(
id_Packaging INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
packaging_type VARCHAR(30),
packaging_cost DECIMAL
);

CREATE TABLE Tax(
id_tax INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
tariff DECIMAL,
deductible BOOL,
actionable BOOL
);

CREATE TABLE Producto(
id_Product INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
brand VARCHAR(30),
price VARCHAR(30),
origin VARCHAR(30),
id_tax INT,
FOREIGN KEY (id_tax) REFERENCES Tax(id_tax)
);

CREATE TABLE Venta(
id_sale INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
id_Client INT,
id_Product INT,
id_Promotion INT,
id_Packaging INT,
quantity INT,
cost DECIMAL,
IVA DECIMAL,
type_of_sale VARCHAR(30),
date_of_sale DATE,
FOREIGN KEY (id_Client) REFERENCES Cliente (id_Client),
FOREIGN KEY (id_Product) REFERENCES Producto (id_Product),
FOREIGN KEY (id_Promotion) REFERENCES Promocion(id_Promotion),
FOREIGN KEY (id_Packaging) REFERENCES Embalaje(id_Packaging)
);
