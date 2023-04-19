CREATE DATABASE TobbacoNstuff;

USE TobbacoNstuff;

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

USE tobbaconstuff;

INSERT INTO City (City) VALUES("Buenos Aires");
INSERT INTO City (City) VALUES("La Plata");
INSERT INTO City (City) VALUES("Mar del Plata");
INSERT INTO City (City) VALUES("Bahía Blanca");
INSERT INTO City (City) VALUES("San Fernando del Valle de Catamarca");
INSERT INTO City (City) VALUES("Andalgalá");
INSERT INTO City (City) VALUES("Belén");
INSERT INTO City (City) VALUES("Resistencia");
INSERT INTO City (City) VALUES("Barranqueras");
INSERT INTO City (City) VALUES("Presidencia Roque Sáenz Peña");       
INSERT INTO City (City) VALUES("Rawson");
INSERT INTO City (City) VALUES("Trelew");
INSERT INTO City (City) VALUES("Comodoro Rivadavia");
INSERT INTO City (City) VALUES("Córdoba");
INSERT INTO City (City) VALUES("Villa Carlos Paz");
INSERT INTO City (City) VALUES("Río Cuarto");
INSERT INTO City (City) VALUES("Corrientes");
INSERT INTO City (City) VALUES("Goya");
INSERT INTO City (City) VALUES("Mercedes");
INSERT INTO City (City) VALUES("Paraná");
INSERT INTO City (City) VALUES("Concordia");
INSERT INTO City (City) VALUES("Gualeguaychú");
INSERT INTO City (City) VALUES("Formosa");
INSERT INTO City (City) VALUES("Clorinda");
INSERT INTO City (City) VALUES("Pirané");
INSERT INTO City (City) VALUES("San Salvador de Jujuy");
INSERT INTO City (City) VALUES("Palpalá");
INSERT INTO City (City) VALUES("San Pedro");
INSERT INTO City (City) VALUES("Santa Rosa");
INSERT INTO City (City) VALUES("General Pico");
INSERT INTO City (City) VALUES("Toay");
INSERT INTO City (City) VALUES("La Rioja");
INSERT INTO City (City) VALUES("Chamical");
INSERT INTO City (City) VALUES("Aimogasta");
INSERT INTO City (City) VALUES("Mendoza");
INSERT INTO City (City) VALUES("San Rafael");
INSERT INTO City (City) VALUES("Luján de Cuyo");
INSERT INTO City (City) VALUES("Posadas");
INSERT INTO City (City) VALUES("Eldorado");
INSERT INTO City (City) VALUES("Oberá");
INSERT INTO City (City) VALUES("Neuquén");
INSERT INTO City (City) VALUES("Cutral-Có");
INSERT INTO City (City) VALUES("Plottier");
INSERT INTO City (City) VALUES("Viedma");
INSERT INTO City (City) VALUES("San Carlos de Bariloche");
INSERT INTO City (City) VALUES("General Roca");
INSERT INTO City (City) VALUES("Salta");
INSERT INTO City (City) VALUES("Cafayate");
INSERT INTO City (City) VALUES("San Ramón de la Nueva Orán");
INSERT INTO City (City) VALUES("San Juan");
INSERT INTO City (City) VALUES("Rawson");
INSERT INTO City (City) VALUES("Santa Lucía");
INSERT INTO City (City) VALUES("San Luis");
INSERT INTO City (City) VALUES("Villa Mercedes");
INSERT INTO City (City) VALUES("Merlo");
INSERT INTO City (City) VALUES("Río Gallegos");
INSERT INTO City (City) VALUES("Caleta Olivia");
INSERT INTO City (City) VALUES("Puerto Deseado");
INSERT INTO City (City) VALUES("Santa Fe");
INSERT INTO City (City) VALUES("Rosario");
INSERT INTO City (City) VALUES("Venado Tuerto");
INSERT INTO City (City) VALUES("Santiago del Estero");
INSERT INTO City (City) VALUES("La Banda");
INSERT INTO City (City) VALUES("Termas de Río Hondo");
INSERT INTO City (City) VALUES("Ushuaia");
INSERT INTO City (City) VALUES("Río Grande");
INSERT INTO City (City) VALUES("Tolhuin");
INSERT INTO City (City) VALUES("San Miguel de Tucumán");
INSERT INTO City (City) VALUES("Tafí Viejo");
INSERT INTO City (City) VALUES("Monteros");
INSERT INTO Province (Province) VALUES("Buenos Aires");
INSERT INTO Province (Province) VALUES("Catamarca");
INSERT INTO Province (Province) VALUES("Chaco");
INSERT INTO Province (Province) VALUES("Chubut");
INSERT INTO Province (Province) VALUES("Córdoba");
INSERT INTO Province (Province) VALUES("Corrientes");
INSERT INTO Province (Province) VALUES("Entre Ríos");
INSERT INTO Province (Province) VALUES("Formosa");
INSERT INTO Province (Province) VALUES("Jujuy");
INSERT INTO Province (Province) VALUES("La Pampa");
INSERT INTO Province (Province) VALUES("La Rioja");
INSERT INTO Province (Province) VALUES("Mendoza");
INSERT INTO Province (Province) VALUES("Misiones");
INSERT INTO Province (Province) VALUES("Neuquén");
INSERT INTO Province (Province) VALUES("Río Negro");
INSERT INTO Province (Province) VALUES("Salta");
INSERT INTO Province (Province) VALUES("San Juan");
INSERT INTO Province (Province) VALUES("San Luis");
INSERT INTO Province (Province) VALUES("Santa Cruz");
INSERT INTO Province (Province) VALUES("Santa Fe");
INSERT INTO Province (Province) VALUES("Santiago del Estero");
INSERT INTO Province (Province) VALUES("Tierra del Fuego");
INSERT INTO Province (Province) VALUES("Tucumán");
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Sue', 'Garcia', 'clwvbnny@hotmail.com', 1727467964, '1965-4-14', 18, 55);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Jill', 'Martinez', 'ajxctgor@gmail.com', 1302829188, '1946-12-13', 7, 22);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Emily', 'Garcia', 'acfenyet@yahoo.com', 1232547943, '1982-6-21', 1, 2);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Mike', 'Taylor', 'ruzjjhfj@yahoo.com', 1612943577, '1922-8-17', 19, 58);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Bob', 'Davis', 'curllfqn@hotmail.com', 1561639249, '1940-3-5', 20, 60);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Sue', 'Wilson', 'ipphdfah@yahoo.com', 1086522322, '1950-12-5', 22, 66);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Jill', 'Martinez', 'kabfeyux@yahoo.com', 1257163705, '1987-11-16', 8, 25);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Jill', 'Rodriguez', 'qgoyodda@yahoo.com', 1242672585, '1938-10-16', 15, 44);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('David', 'Taylor', 'tmnvbyof@hotmail.com', 1085915179, '2019-9-18', 1, 3);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Bob', 'Martinez', 'eixffxkx@outlook.com', 1303179222, '2009-7-27', 4, 12);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('John', 'Rodriguez', 'iadlfens@yahoo.com', 1876609473, '2006-7-26', 8, 25);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Bob', 'Wilson', 'pzrehhdz@outlook.com', 1884403850, '1968-6-10', 7, 22);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Jane', 'Brown', 'agktnqpx@hotmail.com', 1306909695, '1939-2-1', 8, 23);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Jill', 'Wilson', 'kakvdshi@outlook.com', 1304095336, '1983-4-17', 12, 36);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Sue', 'Smith', 'wnjujkou@outlook.com', 1243586739, '1993-1-16', 11, 33);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('David', 'Garcia', 'yysvwvop@outlook.com', 1604681181, '1923-8-12', 5, 14);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Bob', 'Anderson', 'tcafwfja@hotmail.com', 1239078023, '2014-5-18', 18, 54);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Mike', 'Martinez', 'enzrapvz@outlook.com', 1649902442, '1920-2-10', 10, 31);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Mike', 'Brown', 'yagpzdrs@yahoo.com', 1676739081, '1933-8-14', 18, 53);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Jill', 'Brown', 'bfnwgeig@gmail.com', 1123284347, '1976-7-19', 3, 10);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Maria', 'Garcia', 'ofonwpan@gmail.com', 1211877754, '1994-1-21', 13, 38);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Jane', 'Wilson', 'bwomiivr@outlook.com', 1566227804, '1960-11-13', 22, 67);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Bob', 'Wilson', 'kfraffld@gmail.com', 1364856346, '2001-2-25', 4, 11);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Sue', 'Taylor', 'cosrgqzc@hotmail.com', 1828957627, '1993-10-27', 17, 50);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Maria', 'Rodriguez', 'wzxcsnbw@outlook.com', 1576015491, '1952-11-6', 12, 36);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Bob', 'Martinez', 'tbzwdxtt@outlook.com', 1057725631, '1994-5-10', 9, 27);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Maria', 'Brown', 'susofrqx@gmail.com', 1573057744, '1993-5-2', 6, 17);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Bob', 'Martinez', 'dfzlpyeq@outlook.com', 1088198339, '1989-3-3', 21, 63);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Emily', 'Rodriguez', 'seuayinr@yahoo.com', 1145952502, '1981-10-16', 12, 37);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Sue', 'Davis', 'lrydosvd@yahoo.com', 1529086843, '1983-6-23', 4, 12);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Mike', 'Wilson', 'dcmnkzjw@outlook.com', 1549484164, '1951-1-13', 6, 18);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('John', 'Brown', 'zebvvwut@gmail.com', 1808833134, '1990-5-21', 7, 21);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Jill', 'Smith', 'bynomuew@yahoo.com', 1812765438, '1930-6-27', 2, 5);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Bob', 'Taylor', 'ijhxcyxq@gmail.com', 1432668633, '2017-12-2', 16, 49);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Sue', 'Davis', 'lailghhd@yahoo.com', 1155692783, '2002-3-7', 3, 9);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Bob', 'Johnson', 'menjhdph@yahoo.com', 1301139388, '1939-12-16', 6, 19);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Emily', 'Wilson', 'nmucwpiz@gmail.com', 1841385503, '2006-4-3', 9, 26);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Bob', 'Wilson', 'rkgalana@yahoo.com', 1915942041, '2002-11-22', 6, 19);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Jill', 'Rodriguez', 'bqpkagxm@gmail.com', 1585797627, '1922-3-20', 19, 56);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Sue', 'Johnson', 'djylmtfn@yahoo.com', 1683229405, '2019-12-6', 21, 63);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('David', 'Smith', 'raotyomm@yahoo.com', 1597709146, '2019-4-28', 3, 10);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('David', 'Davis', 'vyyvxgel@gmail.com', 1906914774, '1985-10-9', 14, 42);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Jack', 'Brown', 'yjjpbxeg@yahoo.com', 1252346200, '1967-12-16', 1, 1);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Mike', 'Anderson', 'yogubooj@outlook.com', 1443059081, '1969-6-4', 13, 40);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('David', 'Wilson', 'ixbqrsqs@outlook.com', 1331982285, '1979-5-13', 11, 32);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Bob', 'Brown', 'mjboptki@yahoo.com', 1863646415, '1958-5-23', 22, 66);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Sue', 'Anderson', 'uisvtszy@outlook.com', 1646946826, '1959-3-18', 12, 36);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Maria', 'Smith', 'mpeumtqj@gmail.com', 1119446080, '1933-8-18', 6, 18);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('David', 'Garcia', 'itmylhfn@gmail.com', 1998443327, '1961-9-1', 17, 50);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Emily', 'Martinez', 'qziqolpp@outlook.com', 1255928212, '2011-5-12', 6, 17);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Jane', 'Rodriguez', 'icwznlyz@gmail.com', 1673913417, '2001-2-26', 19, 57);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Emily', 'Smith', 'kywdwbfq@gmail.com', 1972139233, '2008-7-2', 11, 33);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('David', 'Wilson', 'idtajlgj@hotmail.com', 1097141817, '1924-1-22', 2, 6);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Jill', 'Garcia', 'ggazvrnv@yahoo.com', 1969817742, '2020-8-9', 6, 17);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Emily', 'Taylor', 'afqihfcn@hotmail.com', 1933242725, '1944-8-13', 16, 47);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Jane', 'Johnson', 'ejvupsci@yahoo.com', 1895279692, '1952-6-16', 15, 44);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Jill', 'Garcia', 'psunystv@hotmail.com', 1332125234, '2012-5-27', 17, 51);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Emily', 'Martinez', 'prxtkwqt@gmail.com', 1587737438, '1942-10-11', 9, 27);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Jane', 'Davis', 'bndpaeop@gmail.com', 1681865633, '2001-12-7', 9, 26);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Jill', 'Wilson', 'qsubqkeq@outlook.com', 1181749057, '1948-6-13', 10, 29);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Maria', 'Anderson', 'pxnwyzlz@gmail.com', 2004708016, '1959-6-13', 15, 44);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Jane', 'Anderson', 'nhizslrc@outlook.com', 1435599099, '1969-9-13', 21, 62);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Jill', 'Rodriguez', 'bmlasctj@outlook.com', 1535498712, '1938-10-6', 8, 25);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Sue', 'Wilson', 'wizludkl@gmail.com', 1949602902, '1937-3-20', 17, 50);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Maria', 'Garcia', 'jzvmkqbs@yahoo.com', 1068731971, '2001-6-1', 22, 67);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Maria', 'Wilson', 'yjgjdssr@hotmail.com', 1282073783, '1984-4-1', 18, 54);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Jane', 'Davis', 'ikwmxrqs@gmail.com', 1014427498, '1980-11-27', 13, 40);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Bob', 'Garcia', 'nmirnjwu@outlook.com', 1455622358, '1966-10-8', 8, 23);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Sue', 'Smith', 'khhldbqo@yahoo.com', 1803843604, '1962-5-12', 18, 53);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Emily', 'Johnson', 'egjbzgnc@hotmail.com', 1707291971, '2007-10-10', 14, 43);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Jill', 'Anderson', 'rbpunuyo@hotmail.com', 1676519557, '1930-4-18', 3, 8);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Bob', 'Garcia', 'paofnhqu@yahoo.com', 1304493238, '1953-3-14', 8, 25);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Bob', 'Martinez', 'ouruefla@yahoo.com', 1518033696, '1971-7-1', 7, 20);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Jack', 'Rodriguez', 'exsrlimr@gmail.com', 1401596465, '1964-1-10', 1, 2);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Sue', 'Wilson', 'fwqupphe@yahoo.com', 1171262348, '1995-2-8', 1, 1);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Maria', 'Johnson', 'zvjmdktg@yahoo.com', 1483128937, '1945-7-15', 2, 6);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Sue', 'Smith', 'zybxypfx@hotmail.com', 1032937591, '1938-8-27', 7, 20);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Emily', 'Brown', 'gfdxoqfp@hotmail.com', 1115174166, '1922-4-19', 13, 38);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Sue', 'Brown', 'uanoqbgo@gmail.com', 1879957947, '2002-3-3', 5, 14);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Maria', 'Garcia', 'qatnxzjq@hotmail.com', 1432727967, '1946-10-28', 22, 67);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Sue', 'Taylor', 'qczlriwu@outlook.com', 1126863904, '2015-5-2', 7, 20);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Jill', 'Martinez', 'qakecays@yahoo.com', 1878217243, '1993-10-4', 14, 41);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Jill', 'Wilson', 'rozcygtu@hotmail.com', 1243853800, '1974-12-11', 2, 5);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Emily', 'Anderson', 'fmcytarq@gmail.com', 1545268843, '1952-7-15', 5, 14);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Jill', 'Anderson', 'cyqkylwi@hotmail.com', 1611178898, '1964-12-25', 12, 35);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Emily', 'Davis', 'wyexuruq@yahoo.com', 1483805231, '2021-10-11', 13, 39);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Jack', 'Smith', 'djofuqip@yahoo.com', 1214057548, '1993-8-21', 2, 6);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Jack', 'Taylor', 'tnfmuyax@hotmail.com', 1091933764, '2003-4-4', 2, 6);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Sue', 'Garcia', 'lnsvagef@gmail.com', 1015959661, '1984-2-21', 12, 37);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Jill', 'Anderson', 'moxzblpn@outlook.com', 1149437817, '1966-12-20', 4, 12);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Jack', 'Brown', 'pombymeq@hotmail.com', 1589451242, '1951-4-23', 17, 50);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Jane', 'Taylor', 'srkadgvb@hotmail.com', 1612704354, '1961-8-7', 1, 1);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Maria', 'Johnson', 'jnsbqjme@yahoo.com', 1299989476, '1949-8-18', 22, 65);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Jack', 'Smith', 'slqeivzz@yahoo.com', 1867668999, '1950-8-9', 19, 58);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Mike', 'Rodriguez', 'ehosgues@gmail.com', 1385496783, '1966-2-16', 21, 63);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('David', 'Johnson', 'iakphrbv@yahoo.com', 1903297990, '1952-11-1', 14, 42);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Jill', 'Johnson', 'kjdxdubo@gmail.com', 1523825114, '1971-10-28', 2, 5);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Sue', 'Wilson', 'wzbwvhik@gmail.com', 1724547343, '2013-4-1', 8, 23);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('Jill', 'Garcia', 'oghvskhz@outlook.com', 1679684003, '1995-4-22', 20, 59);
INSERT INTO Costumer (first_name, last_name, email, tel, birthDate, id_Province, id_City) VALUES ('John', 'Anderson', 'gldkmrpw@yahoo.com', 1463651132, '2011-5-7', 1, 3);
INSERT INTO Tax (tariff, deductible, actionable) VALUES(2.16, 1, 0);
INSERT INTO Tax (tariff, deductible, actionable) VALUES(1.54, 1, 0);
INSERT INTO Tax (tariff, deductible, actionable) VALUES(2.98, 1, 1);
INSERT INTO Tax (tariff, deductible, actionable) VALUES(1.74, 0, 1);
INSERT INTO Tax (tariff, deductible, actionable) VALUES(2.25, 0, 0);
INSERT INTO Product (brand, price, origin, id_tax) VALUES('Pall Mall', 6.8, 'USA', 4);
INSERT INTO Product (brand, price, origin, id_tax) VALUES('Marlboro', 7.25, 'USA', 1);
INSERT INTO Product (brand, price, origin, id_tax) VALUES('Lucky Strike', 8.83, 'USA', 2);
INSERT INTO Product (brand, price, origin, id_tax) VALUES('Camel', 5.28, 'USA', 5);
INSERT INTO Product (brand, price, origin, id_tax) VALUES('Kent', 7.23, 'USA', 3);
INSERT INTO Product (brand, price, origin, id_tax) VALUES('Dunhill', 8.2, 'UK', 3);
INSERT INTO Product (brand, price, origin, id_tax) VALUES('Chesterfield', 8.71, 'USA', 5);
INSERT INTO Product (brand, price, origin, id_tax) VALUES('Nat Sherman', 8.99, 'USA', 3);
INSERT INTO Product (brand, price, origin, id_tax) VALUES('American Spirit', 8.28, 'USA', 4);
INSERT INTO Product (brand, price, origin, id_tax) VALUES('Winston', 6.19, 'USA', 5);
INSERT INTO Packaging (packaging_type, packaging_cost) VALUES('Soft Pack', 18.57);
INSERT INTO Packaging (packaging_type, packaging_cost) VALUES('Tin', 17.98);      
INSERT INTO Packaging (packaging_type, packaging_cost) VALUES('Box', 16.46);      
INSERT INTO Packaging (packaging_type, packaging_cost) VALUES('Soft Pack', 19.48);
INSERT INTO Promotion (percentage, cumulative) VALUES(5.55, 0);
INSERT INTO Promotion (percentage, cumulative) VALUES(3.25, 1);
INSERT INTO Promotion (percentage, cumulative) VALUES(2.80, 0);
INSERT INTO Promotion (percentage, cumulative) VALUES(1.90, 1);
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(82, 5, 4, 3, 271, 119, 27, 'Direct mail', '2021-7-27');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(73, 9, 2, 1, 67, 162, 21, 'Social media', '2020-10-20');  
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(90, 3, 4, 4, 43, 149, 21, 'Telemarketing', '2022-12-6');  
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(5, 9, 1, 1, 171, 186, 27, 'Direct mail', '2020-8-8');     
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(33, 9, 2, 2, 73, 194, 10, 'Direct mail', '2022-11-23');   
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(6, 8, 3, 1, 347, 102, 27, 'Telemarketing', '2021-10-16'); 
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(70, 10, 3, 1, 280, 190, 10, 'Online', '2022-3-16');       
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(33, 9, 1, 2, 286, 156, 21, 'Telemarketing', '2020-5-7');  
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(40, 6, 1, 4, 307, 196, 10, 'In-person', '2019-2-26');     
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(6, 6, 3, 2, 118, 124, 27, 'Online', '2021-4-24');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(31, 1, 2, 4, 121, 107, 21, 'Online', '2019-8-23');        
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(28, 7, 4, 3, 138, 137, 10, 'Telemarketing', '2020-9-2');  
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(31, 6, 3, 3, 332, 164, 27, 'In-person', '2020-11-8');     
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(33, 7, 2, 4, 178, 177, 10, 'Telemarketing', '2019-12-12');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(3, 7, 1, 2, 315, 136, 21, 'Direct mail', '2020-6-27');    
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(2, 5, 3, 4, 10, 189, 10, 'In-person', '2020-9-2');        
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(17, 7, 2, 3, 302, 156, 10, 'Telemarketing', '2023-5-3');  
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(80, 4, 2, 3, 25, 150, 21, 'In-person', '2021-3-21');      
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(77, 3, 3, 4, 326, 177, 10, 'Online', '2019-8-16');        
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(45, 10, 3, 1, 348, 124, 21, 'Online', '2022-11-10');      
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(42, 2, 4, 1, 134, 117, 27, 'Online', '2020-12-26');       
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(32, 2, 3, 3, 121, 176, 10, 'Online', '2019-4-26');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(45, 7, 3, 2, 61, 114, 21, 'Telemarketing', '2021-9-23');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(12, 1, 3, 2, 68, 109, 21, 'Social media', '2021-7-9');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(67, 4, 3, 2, 206, 114, 21, 'In-person', '2020-12-17');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(58, 1, 1, 3, 311, 124, 10, 'In-person', '2021-2-19');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(88, 5, 3, 4, 101, 156, 27, 'Direct mail', '2022-1-10');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(30, 8, 2, 2, 220, 122, 27, 'Direct mail', '2021-3-26');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(38, 1, 3, 1, 15, 107, 21, 'In-person', '2023-9-24');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(36, 8, 4, 4, 94, 162, 27, 'Social media', '2020-7-17');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(33, 4, 3, 1, 334, 198, 27, 'Telemarketing', '2023-4-28');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(44, 4, 4, 2, 80, 151, 21, 'Direct mail', '2022-6-14');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(57, 10, 2, 3, 12, 100, 10, 'Social media', '2020-11-20');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(77, 5, 4, 2, 279, 110, 27, 'Social media', '2022-1-9');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(75, 9, 3, 3, 302, 172, 27, 'Direct mail', '2020-8-28');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(19, 4, 3, 2, 130, 149, 21, 'Direct mail', '2020-11-27');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(49, 9, 4, 1, 165, 179, 21, 'In-person', '2020-10-15');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(59, 5, 3, 3, 127, 100, 27, 'In-person', '2023-3-5');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(49, 6, 4, 2, 238, 132, 21, 'Direct mail', '2022-5-23');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(57, 1, 1, 4, 322, 185, 21, 'In-person', '2021-8-7');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(77, 10, 1, 2, 258, 151, 10, 'Online', '2019-3-27');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(69, 8, 2, 3, 136, 157, 27, 'In-person', '2023-4-24');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(53, 1, 3, 2, 174, 109, 10, 'Direct mail', '2022-3-14');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(11, 1, 4, 4, 119, 163, 27, 'Online', '2021-12-27');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(53, 8, 3, 3, 79, 135, 21, 'Online', '2023-1-6');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(8, 6, 4, 4, 198, 151, 21, 'Telemarketing', '2019-3-10');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(87, 10, 3, 4, 159, 112, 27, 'Online', '2019-8-4');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(43, 1, 2, 2, 188, 181, 10, 'Direct mail', '2023-5-14');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(96, 5, 2, 2, 87, 198, 21, 'In-person', '2019-5-6');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(94, 7, 1, 1, 155, 159, 21, 'Social media', '2021-7-23');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(20, 8, 2, 4, 106, 150, 27, 'Social media', '2019-6-8');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(33, 2, 1, 2, 15, 197, 21, 'Telemarketing', '2023-7-14');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(47, 3, 4, 2, 28, 196, 21, 'Social media', '2022-5-28');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(54, 6, 3, 2, 175, 198, 21, 'In-person', '2023-2-27');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(85, 7, 4, 1, 158, 180, 10, 'Direct mail', '2021-9-27');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(73, 2, 4, 2, 213, 128, 21, 'Online', '2019-6-18');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(64, 1, 1, 3, 99, 104, 21, 'Telemarketing', '2022-4-14');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(56, 10, 1, 4, 215, 187, 21, 'Social media', '2020-4-11');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(61, 7, 3, 3, 239, 112, 21, 'Direct mail', '2020-5-20');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(8, 7, 2, 3, 92, 174, 21, 'Direct mail', '2023-3-27');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(13, 9, 2, 3, 231, 186, 21, 'Direct mail', '2020-5-7');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(92, 5, 3, 4, 131, 116, 10, 'Online', '2019-5-12');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(45, 2, 4, 2, 36, 158, 27, 'Online', '2022-7-20');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(18, 10, 1, 1, 311, 123, 21, 'In-person', '2019-3-17');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(61, 5, 2, 3, 28, 195, 27, 'Telemarketing', '2020-1-4');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(36, 10, 3, 3, 92, 181, 21, 'In-person', '2022-4-13');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(93, 8, 1, 2, 96, 123, 21, 'Telemarketing', '2023-3-4');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(93, 7, 2, 2, 107, 122, 27, 'Online', '2023-10-18');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(41, 6, 4, 4, 214, 135, 10, 'Telemarketing', '2023-1-25');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(2, 1, 3, 1, 195, 174, 10, 'Direct mail', '2023-4-20');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(74, 7, 3, 1, 34, 165, 21, 'Telemarketing', '2022-12-8');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(62, 10, 2, 3, 67, 104, 10, 'Telemarketing', '2020-4-27');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(50, 4, 1, 1, 213, 200, 10, 'In-person', '2023-2-23');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(88, 1, 4, 3, 52, 107, 27, 'Direct mail', '2021-7-6');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(17, 3, 1, 4, 349, 187, 27, 'In-person', '2020-7-19');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(12, 3, 3, 3, 218, 100, 21, 'In-person', '2020-6-20');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(70, 1, 4, 4, 318, 106, 21, 'Direct mail', '2022-4-23');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(62, 2, 2, 3, 89, 143, 21, 'Telemarketing', '2022-4-15');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(8, 6, 3, 4, 207, 179, 10, 'Online', '2023-3-5');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(36, 6, 3, 2, 65, 137, 21, 'In-person', '2023-12-12');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(58, 7, 4, 2, 13, 153, 21, 'Telemarketing', '2023-9-8');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(81, 3, 2, 4, 77, 128, 10, 'In-person', '2019-3-17');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(48, 1, 4, 4, 152, 137, 21, 'Social media', '2019-9-13');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(71, 2, 1, 1, 12, 152, 27, 'Direct mail', '2021-7-9');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(13, 4, 4, 3, 164, 181, 10, 'Social media', '2020-5-27');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(91, 10, 3, 4, 339, 112, 27, 'Online', '2022-3-12');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(31, 7, 3, 4, 146, 120, 27, 'Direct mail', '2021-1-28');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(35, 2, 1, 1, 234, 107, 21, 'Social media', '2019-3-26');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(60, 7, 1, 3, 319, 148, 21, 'Direct mail', '2021-9-18');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(77, 9, 3, 3, 114, 160, 10, 'Online', '2022-6-5');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(89, 1, 3, 3, 226, 199, 27, 'Telemarketing', '2023-3-9');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(84, 4, 3, 4, 348, 190, 27, 'Online', '2021-12-14');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(68, 8, 3, 3, 30, 191, 27, 'Telemarketing', '2021-10-25');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(41, 4, 1, 3, 188, 189, 21, 'Social media', '2020-3-13');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(43, 2, 2, 3, 189, 180, 10, 'Direct mail', '2023-2-11');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(27, 2, 4, 3, 268, 168, 27, 'Direct mail', '2022-8-5');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(47, 9, 4, 1, 154, 144, 21, 'Telemarketing', '2019-3-28');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(26, 4, 2, 4, 114, 181, 27, 'Social media', '2022-2-3');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(37, 4, 2, 4, 308, 185, 21, 'Direct mail', '2022-2-10');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(52, 4, 3, 3, 33, 109, 27, 'In-person', '2021-12-24');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(38, 10, 2, 1, 299, 120, 21, 'Direct mail', '2019-12-15');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(18, 3, 4, 1, 158, 169, 27, 'Telemarketing', '2022-3-11');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(88, 1, 4, 2, 53, 192, 27, 'Online', '2022-12-26');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(28, 5, 1, 2, 247, 154, 21, 'Direct mail', '2022-7-11');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(28, 6, 3, 2, 101, 146, 21, 'Direct mail', '2023-9-6');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(14, 1, 4, 3, 66, 155, 10, 'Direct mail', '2019-2-13');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(44, 10, 3, 2, 128, 126, 21, 'Online', '2019-5-15');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(6, 2, 1, 1, 13, 134, 27, 'Online', '2021-10-13');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(55, 3, 1, 1, 278, 200, 21, 'In-person', '2019-9-24');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(68, 3, 4, 2, 335, 161, 27, 'Telemarketing', '2023-3-19');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(52, 2, 3, 2, 298, 141, 27, 'Social media', '2020-7-15');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(91, 5, 3, 2, 89, 126, 27, 'Social media', '2021-11-10');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(19, 9, 1, 2, 236, 198, 27, 'Direct mail', '2020-5-21');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(15, 7, 3, 1, 251, 166, 10, 'Online', '2023-5-18');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(88, 7, 3, 2, 175, 135, 27, 'Direct mail', '2023-12-12');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(97, 4, 2, 2, 289, 123, 27, 'Telemarketing', '2022-4-18');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(91, 8, 4, 4, 144, 130, 27, 'In-person', '2021-12-3');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(17, 2, 1, 3, 150, 192, 21, 'Telemarketing', '2020-7-11');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(86, 1, 4, 3, 52, 136, 27, 'Direct mail', '2023-4-7');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(67, 1, 1, 3, 257, 149, 10, 'In-person', '2022-6-1');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(82, 8, 4, 2, 171, 156, 21, 'Direct mail', '2019-6-8');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(35, 5, 2, 4, 90, 143, 21, 'Telemarketing', '2020-2-5');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(54, 1, 1, 3, 250, 139, 10, 'Online', '2023-6-3');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(37, 1, 4, 1, 181, 104, 21, 'Online', '2023-7-9');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(82, 2, 1, 4, 21, 115, 27, 'Social media', '2020-4-19');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(43, 7, 3, 3, 40, 157, 27, 'Direct mail', '2022-5-8');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(87, 1, 2, 4, 162, 163, 10, 'Social media', '2022-8-21');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(28, 1, 2, 2, 79, 178, 27, 'In-person', '2021-1-10');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(96, 7, 3, 2, 59, 170, 27, 'Telemarketing', '2019-10-11');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(81, 4, 2, 4, 250, 184, 10, 'Direct mail', '2023-6-26');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(68, 1, 2, 3, 37, 125, 21, 'Social media', '2023-7-21');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(11, 7, 1, 3, 195, 128, 21, 'Social media', '2020-8-27');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(50, 10, 2, 3, 164, 178, 10, 'Social media', '2019-4-15');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(89, 7, 2, 1, 100, 194, 27, 'In-person', '2023-4-1');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(92, 6, 2, 3, 324, 151, 27, 'Online', '2023-3-19');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(90, 10, 1, 2, 100, 149, 21, 'Social media', '2022-11-27');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(33, 1, 3, 1, 65, 199, 21, 'In-person', '2021-2-13');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(24, 3, 3, 3, 174, 153, 21, 'Social media', '2022-1-14');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(23, 8, 2, 2, 15, 168, 27, 'Direct mail', '2021-6-19');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(29, 2, 1, 3, 14, 140, 10, 'Telemarketing', '2021-9-2');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(45, 3, 4, 1, 111, 113, 21, 'In-person', '2020-1-11');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(95, 6, 3, 1, 162, 195, 21, 'Direct mail', '2022-1-16');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(88, 2, 3, 3, 17, 113, 10, 'Telemarketing', '2022-7-12');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(91, 9, 2, 1, 226, 187, 10, 'In-person', '2020-8-22');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(8, 3, 2, 3, 73, 140, 27, 'In-person', '2022-8-22');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(94, 10, 4, 3, 130, 108, 21, 'Telemarketing', '2022-11-18');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(48, 5, 2, 2, 123, 116, 10, 'Social media', '2022-10-8');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(50, 8, 4, 4, 140, 129, 27, 'In-person', '2021-1-18');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(81, 1, 2, 1, 54, 168, 27, 'Online', '2019-1-15');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(42, 8, 2, 3, 11, 119, 10, 'Online', '2019-2-26');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(66, 10, 1, 3, 308, 112, 10, 'In-person', '2021-8-7');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(32, 9, 1, 4, 237, 103, 27, 'Online', '2023-6-21');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(61, 1, 4, 1, 335, 156, 10, 'Telemarketing', '2023-6-21');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(32, 1, 3, 1, 235, 159, 27, 'Online', '2022-2-21');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(85, 1, 2, 1, 47, 162, 10, 'Social media', '2020-9-7');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(85, 6, 1, 3, 54, 152, 21, 'Online', '2023-6-11');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(90, 7, 3, 4, 297, 149, 27, 'In-person', '2022-12-3');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(10, 1, 2, 1, 132, 119, 10, 'Online', '2020-12-20');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(98, 2, 2, 1, 88, 182, 21, 'Social media', '2019-7-10');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(83, 9, 1, 4, 295, 192, 27, 'In-person', '2020-4-26');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(26, 6, 3, 3, 249, 115, 21, 'Telemarketing', '2019-2-16');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(46, 2, 4, 2, 189, 151, 10, 'Direct mail', '2021-7-20');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(73, 1, 3, 1, 195, 179, 10, 'Online', '2020-4-2');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(34, 4, 2, 2, 149, 170, 21, 'Telemarketing', '2021-12-13');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(89, 8, 3, 2, 336, 184, 27, 'Online', '2021-9-17');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(65, 10, 1, 2, 210, 135, 10, 'In-person', '2022-2-20');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(41, 3, 3, 2, 201, 195, 27, 'Direct mail', '2022-11-25');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(10, 3, 2, 4, 281, 115, 27, 'Telemarketing', '2021-5-28');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(53, 9, 1, 4, 115, 150, 27, 'Online', '2020-6-27');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(27, 6, 3, 4, 294, 181, 27, 'Social media', '2019-4-21');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(85, 3, 4, 1, 54, 123, 27, 'Direct mail', '2019-8-20');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(3, 9, 1, 4, 191, 141, 21, 'Online', '2021-11-4');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(38, 4, 1, 1, 294, 154, 10, 'In-person', '2023-12-22');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(81, 1, 2, 3, 130, 188, 27, 'In-person', '2022-6-15');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(58, 3, 3, 3, 296, 100, 10, 'In-person', '2020-10-17');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(39, 3, 2, 3, 109, 156, 10, 'Social media', '2020-7-8');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(12, 4, 2, 3, 156, 138, 21, 'In-person', '2020-1-26');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(71, 10, 4, 4, 101, 179, 27, 'Social media', '2022-12-18');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(93, 8, 2, 1, 103, 172, 21, 'Online', '2020-1-4');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(83, 1, 2, 3, 287, 113, 21, 'In-person', '2022-5-22');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(18, 10, 3, 4, 332, 186, 21, 'Direct mail', '2021-5-14');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(52, 8, 2, 4, 262, 123, 10, 'Online', '2023-6-9');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(5, 5, 2, 4, 205, 101, 21, 'Social media', '2021-8-17');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(82, 2, 1, 3, 172, 168, 21, 'Social media', '2020-4-6');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(58, 5, 2, 1, 153, 107, 27, 'Social media', '2021-9-28');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(7, 8, 4, 4, 139, 166, 10, 'Direct mail', '2020-12-28');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(29, 2, 2, 4, 246, 127, 10, 'Social media', '2023-9-23');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(52, 3, 2, 1, 46, 176, 21, 'Online', '2021-7-3');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(72, 3, 4, 3, 111, 154, 21, 'Direct mail', '2020-6-2');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(65, 8, 4, 2, 345, 111, 10, 'Direct mail', '2020-8-2');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(75, 8, 4, 2, 23, 108, 27, 'Social media', '2023-5-27');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(14, 7, 1, 2, 115, 165, 10, 'Social media', '2020-12-13');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(19, 1, 3, 2, 319, 118, 10, 'Social media', '2020-3-4');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(7, 5, 2, 2, 153, 152, 27, 'Online', '2021-3-14');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(23, 6, 3, 2, 199, 169, 21, 'Social media', '2019-7-24');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(34, 3, 3, 1, 264, 129, 21, 'Online', '2022-10-16');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(100, 6, 4, 1, 249, 167, 21, 'In-person', '2021-10-8');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(37, 9, 3, 4, 319, 169, 21, 'Direct mail', '2020-4-24');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(28, 4, 4, 4, 21, 177, 10, 'Social media', '2022-3-16');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(82, 6, 4, 2, 142, 117, 27, 'Online', '2023-5-1');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(81, 10, 2, 4, 48, 185, 10, 'Social media', '2023-11-3');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(26, 10, 3, 2, 111, 164, 27, 'Online', '2020-5-21');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(55, 8, 2, 4, 87, 125, 27, 'Social media', '2019-12-3');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(98, 1, 3, 2, 204, 178, 21, 'Telemarketing', '2021-10-15');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(2, 5, 2, 3, 243, 131, 10, 'In-person', '2020-8-15');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(93, 10, 3, 4, 297, 101, 21, 'Online', '2019-7-21');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(19, 4, 2, 1, 336, 188, 10, 'Social media', '2020-11-24');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(67, 9, 3, 4, 179, 182, 27, 'Telemarketing', '2023-2-5');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(3, 7, 4, 4, 147, 121, 10, 'Direct mail', '2022-5-11');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(27, 3, 3, 3, 197, 104, 21, 'In-person', '2023-6-12');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(74, 5, 4, 4, 137, 125, 10, 'In-person', '2022-4-18');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(82, 4, 4, 4, 99, 179, 10, 'Direct mail', '2021-12-13');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(22, 9, 2, 2, 274, 180, 27, 'Social media', '2023-11-25');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(100, 10, 3, 3, 304, 137, 10, 'In-person', '2021-2-22');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(64, 3, 3, 4, 153, 170, 10, 'Social media', '2020-8-1');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(13, 8, 3, 1, 263, 153, 27, 'Social media', '2021-2-28');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(4, 10, 2, 1, 298, 100, 27, 'Direct mail', '2023-1-23');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(14, 10, 1, 1, 160, 169, 10, 'Direct mail', '2023-12-7');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(87, 7, 2, 4, 166, 101, 27, 'Telemarketing', '2019-5-13');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(87, 4, 4, 4, 20, 182, 27, 'Direct mail', '2023-9-13');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(96, 1, 1, 1, 87, 111, 21, 'Online', '2019-12-23');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(35, 10, 4, 2, 35, 159, 27, 'Telemarketing', '2021-3-15');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(49, 1, 3, 2, 39, 107, 27, 'Social media', '2022-6-11');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(80, 4, 3, 4, 290, 115, 10, 'Direct mail', '2023-7-26');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(21, 8, 3, 3, 277, 124, 21, 'Online', '2019-8-13');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(66, 2, 4, 2, 181, 185, 21, 'Telemarketing', '2021-10-21');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(50, 9, 1, 1, 281, 125, 27, 'Social media', '2020-2-19');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(11, 3, 3, 3, 125, 151, 10, 'Telemarketing', '2021-10-26');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(36, 4, 4, 1, 159, 148, 27, 'Social media', '2020-5-27');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(11, 3, 1, 1, 54, 130, 21, 'Online', '2019-5-18');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(37, 9, 4, 2, 180, 197, 10, 'In-person', '2020-10-1');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(15, 8, 3, 2, 224, 182, 21, 'In-person', '2022-11-25');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(28, 1, 1, 3, 148, 147, 27, 'Direct mail', '2020-10-2');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(68, 6, 2, 4, 57, 114, 10, 'Online', '2022-2-3');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(27, 7, 1, 1, 183, 190, 21, 'In-person', '2023-10-5');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(52, 2, 4, 1, 321, 197, 27, 'In-person', '2022-4-6');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(96, 2, 3, 4, 78, 104, 27, 'Telemarketing', '2022-9-21');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(59, 9, 1, 4, 347, 140, 27, 'Telemarketing', '2022-12-11');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(20, 8, 3, 2, 268, 183, 21, 'Direct mail', '2019-6-27');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(44, 6, 3, 1, 296, 150, 10, 'Direct mail', '2023-12-5');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(99, 3, 4, 3, 141, 107, 21, 'Online', '2021-9-25');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(24, 5, 1, 4, 226, 187, 27, 'Telemarketing', '2022-9-2');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(86, 2, 1, 2, 18, 149, 27, 'Online', '2019-5-27');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(46, 9, 4, 3, 103, 105, 27, 'Telemarketing', '2021-7-8');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(70, 5, 1, 1, 97, 181, 10, 'Social media', '2022-8-12');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(10, 7, 3, 2, 131, 145, 27, 'Online', '2020-12-26');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(84, 4, 3, 3, 247, 159, 10, 'Direct mail', '2022-1-3');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(14, 9, 4, 2, 271, 124, 10, 'In-person', '2019-12-13');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(3, 5, 3, 1, 82, 106, 10, 'Social media', '2020-7-9');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(39, 4, 3, 2, 245, 163, 10, 'In-person', '2019-7-2');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(69, 10, 2, 3, 172, 191, 10, 'Online', '2020-4-9');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(14, 4, 2, 1, 188, 140, 10, 'Online', '2021-8-15');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(20, 5, 4, 3, 219, 124, 21, 'Telemarketing', '2019-9-25');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(40, 8, 3, 3, 246, 104, 27, 'Social media', '2022-3-18');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(43, 5, 1, 2, 296, 125, 27, 'In-person', '2023-1-18');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(98, 7, 3, 4, 313, 142, 10, 'In-person', '2022-1-1');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(5, 7, 3, 2, 115, 169, 27, 'Telemarketing', '2021-11-1');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(76, 5, 1, 1, 143, 119, 27, 'Telemarketing', '2020-11-9');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(34, 3, 1, 4, 159, 192, 10, 'Social media', '2021-3-1');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(27, 6, 1, 1, 292, 112, 21, 'Online', '2020-12-7');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(87, 1, 1, 4, 230, 156, 27, 'Social media', '2021-2-1');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(69, 8, 2, 3, 104, 168, 10, 'Online', '2021-9-11');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(32, 4, 1, 4, 94, 158, 10, 'Online', '2021-7-19');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(38, 6, 1, 4, 92, 170, 27, 'Social media', '2021-11-27');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(100, 9, 1, 2, 187, 119, 21, 'Social media', '2023-7-26');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(10, 3, 1, 4, 281, 112, 27, 'Online', '2020-9-8');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(61, 7, 4, 4, 329, 175, 21, 'Telemarketing', '2021-11-14');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(24, 5, 3, 1, 291, 122, 21, 'Telemarketing', '2023-12-20');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(96, 5, 1, 1, 298, 144, 27, 'Direct mail', '2023-4-28');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(6, 1, 3, 3, 90, 186, 21, 'In-person', '2022-10-28');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(36, 2, 2, 4, 167, 105, 27, 'Social media', '2022-5-17');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(83, 5, 4, 4, 35, 191, 21, 'Telemarketing', '2020-4-20');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(40, 8, 1, 1, 38, 129, 27, 'Online', '2019-12-2');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(71, 2, 4, 2, 308, 162, 10, 'Online', '2023-3-22');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(23, 2, 4, 2, 63, 168, 10, 'Social media', '2020-9-16');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(83, 1, 3, 1, 131, 163, 10, 'Direct mail', '2020-7-11');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(39, 10, 4, 3, 20, 111, 10, 'Online', '2019-3-16');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(70, 6, 3, 4, 17, 128, 10, 'Social media', '2019-5-22');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(71, 10, 3, 1, 243, 116, 27, 'In-person', '2022-5-3');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(67, 1, 1, 4, 103, 161, 27, 'Social media', '2019-4-12');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(46, 6, 3, 2, 314, 144, 10, 'Online', '2023-5-18');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(17, 3, 3, 3, 218, 180, 10, 'Online', '2019-10-5');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(77, 1, 4, 4, 69, 194, 10, 'Direct mail', '2020-11-14');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(100, 9, 3, 2, 52, 140, 21, 'Telemarketing', '2021-8-17');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(6, 1, 4, 4, 261, 174, 27, 'Telemarketing', '2023-1-27');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(27, 2, 4, 2, 283, 140, 27, 'Online', '2023-11-12');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(4, 5, 2, 2, 339, 121, 10, 'Social media', '2023-12-19');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(24, 1, 4, 2, 134, 173, 10, 'Direct mail', '2021-5-25');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(9, 3, 1, 3, 344, 172, 21, 'Social media', '2019-8-6');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(7, 5, 4, 2, 190, 195, 10, 'Direct mail', '2020-12-10');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(95, 4, 2, 4, 115, 181, 21, 'Direct mail', '2023-3-8');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(87, 8, 3, 3, 182, 188, 10, 'Social media', '2019-5-8');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(41, 7, 3, 4, 108, 185, 27, 'Telemarketing', '2019-4-10');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(98, 7, 1, 3, 75, 175, 21, 'Social media', '2021-6-27');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(79, 5, 3, 3, 195, 159, 21, 'In-person', '2021-3-5');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(16, 3, 3, 2, 109, 199, 21, 'Online', '2020-5-28');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(52, 10, 4, 2, 222, 112, 21, 'Direct mail', '2022-3-2');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(82, 3, 4, 1, 235, 151, 21, 'Social media', '2020-12-17');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(48, 5, 1, 1, 277, 134, 21, 'In-person', '2023-5-9');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(67, 4, 3, 3, 248, 134, 10, 'Direct mail', '2020-3-14');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(26, 1, 1, 2, 111, 135, 21, 'Social media', '2022-12-25');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(73, 4, 3, 4, 322, 137, 27, 'Telemarketing', '2021-1-10');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(67, 10, 1, 3, 83, 104, 21, 'Social media', '2019-3-4');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(81, 2, 2, 3, 328, 179, 27, 'In-person', '2020-6-10');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(24, 10, 3, 2, 238, 132, 27, 'Social media', '2021-12-22');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(76, 8, 2, 1, 283, 176, 27, 'Telemarketing', '2019-5-8');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(12, 1, 2, 1, 110, 123, 10, 'Social media', '2023-5-25');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(52, 3, 2, 4, 44, 111, 21, 'Social media', '2021-6-7');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(25, 4, 2, 3, 225, 148, 27, 'Direct mail', '2023-4-3');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(63, 2, 4, 2, 271, 155, 27, 'In-person', '2021-6-13');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(13, 7, 2, 4, 115, 106, 27, 'Online', '2023-12-17');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(6, 6, 1, 1, 176, 127, 21, 'Telemarketing', '2020-5-24');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(18, 10, 3, 2, 143, 145, 21, 'Social media', '2022-7-26');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(57, 6, 3, 3, 309, 142, 27, 'Telemarketing', '2021-1-8');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(3, 8, 3, 3, 29, 115, 21, 'In-person', '2022-12-13');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(68, 10, 4, 1, 313, 122, 10, 'Social media', '2019-12-20');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(14, 5, 3, 2, 164, 155, 10, 'Online', '2019-1-7');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(19, 6, 1, 3, 15, 172, 10, 'Direct mail', '2023-7-2');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(8, 4, 3, 4, 108, 133, 10, 'Social media', '2020-2-14');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(24, 7, 2, 4, 219, 132, 21, 'In-person', '2022-12-23');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(82, 10, 3, 2, 123, 168, 27, 'In-person', '2021-8-3');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(8, 2, 1, 4, 314, 113, 21, 'Online', '2020-6-8');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(43, 4, 1, 4, 64, 184, 10, 'Social media', '2020-4-18');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(58, 5, 3, 3, 171, 175, 10, 'Social media', '2023-11-16');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(33, 3, 3, 3, 157, 184, 10, 'Social media', '2019-7-20');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(28, 8, 3, 2, 118, 106, 21, 'Social media', '2022-6-7');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(100, 3, 1, 1, 213, 139, 10, 'Telemarketing', '2020-12-18');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(23, 1, 1, 2, 75, 173, 10, 'Direct mail', '2022-2-28');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(78, 6, 2, 2, 201, 128, 10, 'In-person', '2020-10-9');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(90, 9, 3, 4, 208, 108, 21, 'Online', '2019-7-10');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(69, 7, 3, 3, 299, 184, 27, 'In-person', '2020-7-5');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(91, 5, 3, 2, 258, 147, 27, 'Telemarketing', '2023-8-28');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(28, 1, 4, 3, 240, 100, 10, 'Social media', '2020-9-27');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(5, 9, 2, 3, 298, 149, 21, 'Telemarketing', '2022-9-24');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(96, 8, 2, 3, 180, 189, 10, 'Direct mail', '2019-5-14');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(12, 4, 1, 2, 14, 167, 27, 'Direct mail', '2019-4-25');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(42, 9, 3, 4, 255, 124, 27, 'Social media', '2022-10-7');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(42, 10, 1, 4, 207, 195, 21, 'In-person', '2020-4-16');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(94, 1, 3, 4, 345, 116, 10, 'Direct mail', '2022-9-12');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(86, 4, 1, 3, 312, 162, 27, 'Social media', '2020-12-3');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(85, 4, 3, 2, 248, 139, 10, 'Telemarketing', '2022-3-16');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(58, 2, 3, 2, 138, 141, 21, 'In-person', '2021-4-16');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(26, 3, 1, 2, 184, 111, 10, 'Online', '2023-9-14');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(93, 5, 3, 4, 226, 172, 21, 'Online', '2022-6-3');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(18, 10, 3, 4, 134, 191, 10, 'In-person', '2021-8-25');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(71, 7, 2, 3, 51, 109, 10, 'In-person', '2021-5-8');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(46, 5, 1, 4, 336, 174, 10, 'Online', '2020-3-27');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(22, 4, 1, 3, 233, 116, 10, 'Social media', '2023-12-1');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(60, 7, 1, 2, 231, 161, 10, 'Online', '2023-12-7');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(13, 8, 3, 2, 84, 136, 10, 'Telemarketing', '2020-11-27');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(36, 5, 4, 4, 334, 148, 10, 'Direct mail', '2021-10-4');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(58, 3, 3, 4, 106, 149, 10, 'In-person', '2021-9-26');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(76, 6, 2, 2, 221, 177, 27, 'Social media', '2019-8-11');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(24, 10, 3, 3, 254, 113, 27, 'Online', '2021-9-14');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(99, 1, 2, 3, 184, 179, 10, 'Social media', '2021-6-21');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(72, 2, 1, 2, 75, 131, 21, 'Online', '2023-3-22');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(15, 4, 3, 4, 15, 172, 27, 'Social media', '2023-11-4');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(56, 10, 4, 3, 301, 140, 10, 'In-person', '2020-7-12');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(12, 8, 3, 2, 65, 200, 10, 'Social media', '2022-7-21');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(43, 8, 1, 4, 350, 198, 27, 'Online', '2022-9-4');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(64, 10, 2, 4, 28, 133, 21, 'Online', '2020-5-20');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(54, 8, 1, 3, 107, 105, 10, 'Telemarketing', '2022-8-13');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(50, 9, 1, 2, 34, 122, 27, 'Telemarketing', '2020-12-18');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(81, 7, 3, 4, 162, 179, 27, 'In-person', '2019-4-19');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(93, 2, 3, 3, 122, 133, 10, 'Telemarketing', '2021-8-12');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(68, 7, 4, 2, 340, 193, 21, 'Social media', '2019-2-4');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(42, 4, 2, 1, 100, 173, 27, 'Social media', '2019-4-27');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(17, 4, 2, 3, 307, 138, 21, 'Online', '2021-9-24');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(41, 5, 4, 4, 151, 191, 27, 'Online', '2020-3-16');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(5, 5, 2, 4, 79, 149, 21, 'Telemarketing', '2021-1-13');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(64, 5, 4, 3, 86, 159, 21, 'Direct mail', '2020-10-15');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(27, 5, 4, 1, 170, 172, 21, 'Telemarketing', '2021-1-8');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(41, 1, 1, 3, 135, 108, 21, 'Social media', '2020-8-25');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(48, 1, 2, 3, 332, 153, 10, 'Social media', '2021-5-9');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(7, 7, 3, 4, 263, 101, 10, 'Online', '2019-5-27');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(48, 9, 1, 2, 150, 163, 27, 'Telemarketing', '2022-5-2');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(17, 6, 4, 2, 226, 171, 27, 'Online', '2023-7-26');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(84, 8, 3, 3, 31, 177, 27, 'Telemarketing', '2022-10-24');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(56, 1, 3, 3, 49, 179, 21, 'Online', '2023-5-14');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(23, 9, 2, 3, 159, 184, 10, 'Social media', '2022-8-21');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(49, 7, 3, 4, 208, 106, 21, 'In-person', '2022-1-8');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(79, 5, 4, 2, 10, 184, 27, 'Direct mail', '2021-7-8');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(30, 3, 1, 3, 128, 173, 27, 'Social media', '2022-4-28');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(20, 3, 3, 2, 245, 185, 21, 'Direct mail', '2019-9-13');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(43, 1, 1, 3, 78, 138, 27, 'Social media', '2021-6-5');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(9, 6, 1, 1, 239, 183, 27, 'Telemarketing', '2020-6-19');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(79, 9, 2, 4, 266, 136, 21, 'In-person', '2019-1-11');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(78, 5, 2, 4, 321, 111, 27, 'In-person', '2020-6-15');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(39, 3, 3, 2, 152, 196, 21, 'Online', '2023-8-12');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(32, 9, 3, 2, 215, 185, 21, 'Direct mail', '2023-5-3');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(19, 7, 1, 1, 308, 170, 21, 'Direct mail', '2023-9-5');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(7, 5, 4, 4, 217, 102, 27, 'Telemarketing', '2023-3-24');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(57, 3, 1, 4, 203, 181, 21, 'Telemarketing', '2020-9-7');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(78, 4, 2, 3, 210, 178, 10, 'Telemarketing', '2022-3-21');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(18, 2, 3, 3, 332, 100, 10, 'Telemarketing', '2019-2-15');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(44, 10, 2, 3, 163, 109, 27, 'Social media', '2019-2-21');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(63, 5, 4, 3, 107, 103, 21, 'Online', '2021-5-5');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(60, 9, 2, 1, 55, 140, 21, 'Telemarketing', '2022-3-22');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(97, 6, 2, 3, 214, 144, 27, 'Direct mail', '2022-1-10');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(71, 6, 3, 2, 284, 159, 21, 'Telemarketing', '2021-1-8');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(76, 1, 3, 4, 328, 101, 21, 'Direct mail', '2023-10-17');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(18, 8, 2, 3, 72, 113, 10, 'Direct mail', '2023-7-23');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(72, 8, 3, 4, 188, 163, 10, 'Telemarketing', '2021-10-19');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(22, 8, 4, 1, 267, 166, 21, 'In-person', '2019-8-8');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(20, 7, 1, 3, 330, 144, 21, 'Social media', '2023-11-20');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(92, 5, 4, 3, 349, 119, 10, 'Telemarketing', '2019-2-19');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(10, 9, 2, 4, 68, 118, 10, 'Direct mail', '2023-5-16');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(45, 6, 3, 3, 272, 173, 21, 'In-person', '2019-7-4');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(95, 6, 1, 4, 66, 112, 27, 'In-person', '2020-12-8');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(77, 8, 3, 3, 286, 145, 21, 'Direct mail', '2021-6-28');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(61, 3, 1, 4, 13, 132, 21, 'Telemarketing', '2022-2-24');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(99, 7, 2, 2, 317, 200, 27, 'In-person', '2019-6-24');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(16, 6, 3, 1, 155, 103, 21, 'Telemarketing', '2020-1-11');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(85, 7, 4, 4, 26, 149, 10, 'Online', '2021-7-8');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(51, 4, 1, 3, 242, 173, 27, 'Telemarketing', '2019-10-16');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(53, 8, 3, 3, 34, 116, 21, 'In-person', '2022-2-6');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(62, 5, 1, 2, 350, 135, 27, 'In-person', '2020-3-28');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(80, 8, 2, 1, 179, 167, 27, 'Telemarketing', '2022-9-16');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(20, 10, 2, 2, 223, 154, 21, 'Direct mail', '2021-9-26');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(32, 4, 4, 3, 298, 126, 21, 'Social media', '2022-12-1');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(15, 5, 3, 2, 100, 124, 27, 'Telemarketing', '2021-1-15');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(99, 4, 3, 1, 248, 165, 10, 'Direct mail', '2021-7-19');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(54, 2, 4, 4, 335, 142, 27, 'Social media', '2021-3-7');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(11, 2, 1, 3, 182, 155, 10, 'Telemarketing', '2022-7-23');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(71, 3, 2, 4, 306, 107, 21, 'Social media', '2019-9-3');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(34, 8, 2, 1, 308, 161, 27, 'Direct mail', '2021-10-19');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(74, 5, 3, 1, 49, 131, 21, 'Direct mail', '2022-4-1');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(47, 1, 1, 3, 199, 156, 10, 'Social media', '2020-10-27');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(41, 8, 3, 1, 166, 195, 21, 'Direct mail', '2019-1-26');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(43, 5, 3, 1, 89, 129, 10, 'Direct mail', '2022-9-14');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(27, 10, 3, 1, 178, 111, 10, 'Telemarketing', '2020-7-10');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(81, 7, 2, 2, 242, 106, 21, 'Direct mail', '2019-7-3');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(70, 3, 3, 4, 246, 168, 27, 'Social media', '2022-10-26');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(51, 10, 3, 3, 181, 154, 10, 'Direct mail', '2019-8-7');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(21, 9, 1, 2, 344, 148, 10, 'In-person', '2022-5-25');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(22, 6, 2, 3, 27, 164, 10, 'Social media', '2022-6-4');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(92, 6, 4, 2, 62, 155, 27, 'Telemarketing', '2020-11-28');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(99, 2, 4, 1, 300, 168, 21, 'Direct mail', '2019-8-23');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(87, 9, 1, 4, 124, 135, 10, 'Direct mail', '2022-3-28');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(52, 9, 3, 3, 95, 101, 27, 'Direct mail', '2020-7-22');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(55, 10, 3, 1, 17, 142, 27, 'Social media', '2022-11-19');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(68, 6, 4, 2, 183, 153, 10, 'In-person', '2019-12-20');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(100, 5, 1, 4, 167, 135, 21, 'In-person', '2020-8-18');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(78, 5, 3, 3, 52, 160, 21, 'Direct mail', '2022-3-10');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(56, 6, 1, 4, 119, 179, 10, 'Telemarketing', '2023-12-2');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(78, 4, 3, 3, 89, 135, 10, 'Online', '2020-9-19');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(19, 1, 2, 2, 196, 173, 27, 'Direct mail', '2022-5-18');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(63, 1, 4, 1, 199, 103, 21, 'Social media', '2020-4-6');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(83, 8, 3, 2, 232, 101, 21, 'Online', '2020-12-2');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(77, 7, 3, 2, 84, 122, 10, 'Telemarketing', '2022-9-17');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(21, 3, 2, 3, 160, 145, 21, 'Direct mail', '2019-5-3');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(56, 3, 1, 2, 124, 176, 27, 'Online', '2023-11-20');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(17, 6, 3, 2, 211, 183, 10, 'Social media', '2020-11-12');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(73, 7, 3, 3, 274, 133, 27, 'Online', '2019-9-15');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(42, 4, 1, 2, 216, 155, 27, 'Social media', '2019-8-1');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(2, 8, 1, 4, 139, 122, 27, 'In-person', '2022-9-12');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(96, 4, 1, 3, 214, 181, 27, 'Telemarketing', '2023-8-4');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(38, 10, 2, 3, 90, 167, 10, 'Telemarketing', '2019-3-3');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(75, 9, 3, 4, 178, 157, 21, 'Direct mail', '2019-3-16');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(85, 9, 2, 4, 104, 121, 10, 'Telemarketing', '2021-12-3');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(40, 2, 3, 3, 227, 120, 10, 'Online', '2020-4-6');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(81, 6, 2, 2, 348, 118, 27, 'Social media', '2022-11-7');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(36, 2, 1, 4, 121, 125, 21, 'Direct mail', '2023-7-6');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(32, 5, 3, 4, 161, 122, 27, 'Online', '2021-6-2');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(85, 5, 1, 2, 330, 109, 10, 'Direct mail', '2021-8-9');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(47, 7, 4, 3, 324, 122, 21, 'Telemarketing', '2022-5-20');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(79, 1, 4, 3, 44, 112, 27, 'Direct mail', '2022-9-2');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(51, 1, 3, 2, 141, 142, 10, 'Direct mail', '2019-7-1');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(38, 5, 2, 4, 249, 184, 21, 'Telemarketing', '2021-11-21');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(83, 9, 2, 4, 37, 182, 10, 'Online', '2022-7-6');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(95, 4, 3, 4, 254, 182, 10, 'Direct mail', '2022-8-18');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(78, 4, 1, 1, 307, 138, 21, 'Online', '2019-9-13');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(89, 3, 4, 2, 280, 150, 21, 'Telemarketing', '2023-7-10');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(51, 10, 2, 3, 56, 108, 10, 'Telemarketing', '2019-9-28');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(37, 6, 1, 2, 107, 114, 21, 'In-person', '2022-7-28');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(41, 4, 2, 2, 71, 138, 10, 'Direct mail', '2022-9-24');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(5, 8, 4, 2, 29, 196, 21, 'Telemarketing', '2022-10-24');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(9, 10, 2, 1, 196, 185, 10, 'Telemarketing', '2019-12-27');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(34, 8, 1, 1, 308, 166, 27, 'Online', '2022-1-28');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(7, 9, 3, 2, 17, 123, 27, 'Online', '2019-11-23');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(32, 4, 2, 4, 327, 191, 21, 'Social media', '2023-3-25');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(64, 5, 1, 2, 65, 186, 21, 'Social media', '2019-4-28');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(13, 10, 2, 2, 150, 168, 10, 'Online', '2023-10-21');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(86, 3, 2, 1, 54, 181, 27, 'Online', '2023-12-10');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(29, 9, 3, 4, 40, 111, 27, 'In-person', '2022-1-19');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(36, 10, 2, 2, 193, 171, 10, 'In-person', '2022-1-25');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(19, 8, 1, 3, 337, 185, 10, 'Direct mail', '2019-2-6');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(3, 2, 4, 2, 310, 129, 27, 'Direct mail', '2023-9-24');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(21, 1, 2, 1, 192, 189, 10, 'In-person', '2019-1-22');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(92, 9, 4, 3, 17, 128, 21, 'Telemarketing', '2023-9-13');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(89, 3, 3, 3, 34, 179, 10, 'Telemarketing', '2020-12-5');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(85, 4, 2, 3, 179, 145, 21, 'In-person', '2019-10-26');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(66, 8, 3, 1, 272, 128, 10, 'Online', '2019-10-21');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(46, 10, 2, 2, 332, 169, 10, 'Telemarketing', '2023-11-23');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(64, 4, 3, 4, 149, 197, 10, 'Social media', '2020-9-15');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(15, 7, 3, 2, 56, 179, 10, 'Online', '2019-8-2');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(74, 8, 1, 2, 320, 198, 10, 'Direct mail', '2019-5-12');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(23, 7, 4, 3, 312, 190, 27, 'In-person', '2023-12-22');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(7, 9, 2, 1, 301, 120, 21, 'Telemarketing', '2019-6-7');
INSERT INTO Sale (id_Costumer, id_Product, id_Promotion, id_Packaging, quantity, cost, IVA, type_of_sale, date_of_sale) VALUES(95, 9, 2, 3, 89, 136, 27, 'Online', '2019-6-3');

CREATE VIEW top_5_Provinces AS
SELECT COSTUMER.id_province, COUNT(SALE.id_Costumer) AS "Costumer_orders"
FROM costumer
INNER JOIN sale
ON costumer.id_Costumer=SALE.id_Costumer
GROUP BY id_Province
order by COUNT(SALE.id_Costumer) DESC
LIMIT 5;

CREATE VIEW Costumers_from_BuenosAires AS
SELECT * FROM Costumer WHERE id_Province = 1;

CREATE VIEW Top_Costumers AS
SELECT COSTUMER.id_costumer, CONCAT (first_name, " ", last_name) AS "Nombre_completo", COUNT(SALE.id_Costumer) AS "Costumer_orders"
FROM costumer
INNER JOIN sale
ON costumer.id_Costumer=SALE.id_Costumer
GROUP BY id_Costumer
order by COUNT(SALE.id_Costumer) DESC
LIMIT 10;

CREATE VIEW Top_3_product AS
SELECT SALE.id_product, COUNT(id_sale) as quantity 
FROM SALE 
GROUP BY id_product 
ORDER BY quantity DESC 
LIMIT 3;

CREATE VIEW top_5_citys AS
SELECT COSTUMER.id_city, COUNT(SALE.id_Costumer) AS "Costumer_orders"
FROM costumer
INNER JOIN sale
ON costumer.id_Costumer=SALE.id_Costumer
GROUP BY id_City
order by COUNT(SALE.id_Costumer) DESC
LIMIT 5;

-- La funcion "calculate_sale" la cual se le ingresa el id del del producto y la cantidad de la venta, devuelve el precio total a pagar por la venta mayorista 
DELIMITER $$
CREATE FUNCTION calculate_sale(prod int, paramQuant INT) RETURNS DECIMAL (9,2)
	READS SQL DATA
	BEGIN
    DECLARE productPrice DECIMAL (9,2);
    
    DECLARE total_sale_price DECIMAL (9,2);
    
    SELECT price INTO productPrice
    FROM product WHERE id_product = prod;
    
    SET total_sale_price = productPrice * paramQuant;
    RETURN total_sale_price;
END $$
DELIMITER ;

-- La funcion "calculate_tax" la cual se le ingresa el id del del producto y la cantidad de la venta, devuelve el importe total a pagar por la venta mayorista en concepto de impuesto al valor agregado.
DELIMITER $$
CREATE FUNCTION calculate_tax(prod int, paramQuant int) RETURNS DECIMAL (9,2)
	READS SQL DATA
	BEGIN
    DECLARE total_tax_to_pay DECIMAL (9,2);
    DECLARE productPrice DECIMAL (9,2);
    DECLARE IVA decimal (9,2);
    
    SELECT price INTO productPrice
    FROM product WHERE id_product = prod;
    
    SELECT tariff INTO IVA
    FROM tax WHERE id_tax = (SELECT id_tax FROM product WHERE id_product = prod);
   
    SET total_tax_to_pay = (productPrice/100*IVA)*paramQuant;
    RETURN total_tax_to_pay;
END $$
DELIMITER ;

DELIMITER //  
CREATE PROCEDURE order_clients_by (IN field CHAR(20), IN AscOrDesc CHAR (20))  
BEGIN 
	IF field <> '' THEN
		SET @var = CONCAT('ORDER BY ', field);
	ELSE
		SET @var = '';
	END IF;
    
    IF AscOrDesc = "DESC" THEN
		SET @OrderContext = CONCAT('SELECT * FROM costumer ', @var, ' DESC');
    ELSE 
		SET @OrderContext = CONCAT('SELECT * FROM costumer ', @var, ' ASC');
	END IF;
    PREPARE runSQL FROM @OrderContext; 
    EXECUTE runSQL;
    deallocate prepare runSQL;
END // 
DELIMITER ;  

DELIMITER //
CREATE PROCEDURE register_customer (IN firstName CHAR(20), IN lastName CHAR(20), IN emailParam CHAR(20), IN telParam INT, IN birthdayParam DATE, IN provinceParam CHAR (20), IN cityParam CHAR(20))  
BEGIN 
    DECLARE provId INT;
    DECLARE citID INT;
    DECLARE existingProvince VARCHAR(255);
    DECLARE existingCity VARCHAR(255);

    SELECT province INTO existingProvince FROM Province WHERE province = provinceParam;
    IF existingProvince IS NULL THEN
        INSERT INTO Province(province)
        VALUES (provinceParam);
    END IF;

    SELECT city INTO existingCity FROM City WHERE city = cityParam;
    IF existingCity IS NULL THEN
        INSERT INTO City(City)
        VALUES (cityParam);
    END IF;

    SELECT id_Province INTO provID FROM Province WHERE province = provinceParam;
    SELECT id_City INTO citID FROM City WHERE city = cityParam;

    INSERT INTO costumer (first_name, last_name, email, tel, BirthDate, id_Province, id_City) VALUES (firstName, lastName, emailParam, telParam, birthdayParam, provID, citID);
END //
DELIMITER ;

CREATE TABLE registerLog (
	inster_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_Costumer INT,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50),
	tel INT,
	BirthDate DATE,
	id_Province INT,
	id_City INT,
    UserName varchar(100) NULL,
    registerDate timestamp
);

-- El trigger "SAMPLETRIGGER" analiza los inserts en la tabla clientes para dejar constancia 
-- de cuales son los datos que se insertaron en la misma asi tambien como que usuario lo hizo
-- y a que hora

DELIMITER $$
CREATE TRIGGER SampleTrigger
AFTER INSERT
ON tobbaconstuff.costumer FOR EACH ROW
BEGIN
    INSERT INTO registerLog (id_Costumer, first_name, last_name, email, tel, BirthDate, id_Province, id_City, UserName, registerDate) 
    VALUES (NEW.id_Costumer, NEW.first_name, NEW.last_name, NEW.email, NEW.tel, NEW.BirthDate, NEW.id_Province, NEW.id_City, CURRENT_USER(), NOW());

END $$
DELIMITER ;

-- -- El trigger "DeletedTrigger" analiza los deletes en la tabla citys para dejar constancia 
-- de cuales son los datos que se borraron en la misma asi tambien como que usuario lo hizo
-- y a que hora

CREATE TABLE DeletedLogscity (
	deletion_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_city int,
    city varchar(50),
    UserName varchar(100) NULL,
    registerDate timestamp
);

DELIMITER $$
CREATE TRIGGER DeletedTrigger
BEFORE DELETE
ON tobbaconstuff.city FOR EACH ROW
BEGIN
    INSERT INTO DeletedLogscity (id_City, City, UserName, RegisterDate) 
    VALUES (OLD.id_City, OLD.City, CURRENT_USER(), NOW());
END $$
DELIMITER ;

-- Se crea una tercera tabla y trigger correspondiente para captar los clientes que han sido borrados y dejarlos en un registro

CREATE TABLE DeleteCostumerLog (
	delete_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_Costumer INT,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50),
	tel INT,
	BirthDate DATE,
	id_Province INT,
	id_City INT,
    UserName varchar(100) NULL,
    registerDate timestamp
);

DELIMITER $$
CREATE TRIGGER DeletedCostumer
BEFORE DELETE
ON tobbaconstuff.costumer FOR EACH ROW
BEGIN
    INSERT INTO DeleteCostumerLog (id_Costumer, first_name, last_name, email, tel, BirthDate, id_Province, id_City, UserName, registerDate) 
    VALUES (OLD.id_Costumer, OLD.first_name, OLD.last_name, OLD.email, OLD.tel, OLD.BirthDate, OLD.id_Province, OLD.id_City, CURRENT_USER(), NOW());
END $$
DELIMITER ;

CREATE TABLE ProdChanged (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_Product INT,
    brand VARCHAR(30),
    price DECIMAL(19,2),
    origin VARCHAR(30),
    id_tax INT,
    updated_by VARCHAR(100),
    updated_at DATETIME,
    FOREIGN KEY (id_tax) REFERENCES Tax(id_tax)
);

DELIMITER $$
CREATE TRIGGER product_update
BEFORE UPDATE ON Product
FOR EACH ROW
BEGIN
    INSERT INTO ProdChanged (id_Product, brand, price, origin, id_tax, updated_by, updated_at)
    VALUES (OLD.id_Product, OLD.brand, OLD.price, OLD.origin, OLD.id_tax, USER(), NOW());
END$$
DELIMITER ;

-- Tablas transaccionales

-- en primer lugar la tabla transaccional "payments" y el procedure "process_payment"

CREATE TABLE payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    costumer_id INT NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (costumer_id) REFERENCES costumer(id_Costumer)
) ENGINE = InnoDB;

DELIMITER //
-- Defino un nuevo procedimiento almacenado llamado process_payment
CREATE PROCEDURE process_payment(IN p_costumer_id INT, IN p_amount DECIMAL(10,2))
BEGIN
    -- Declaro un manejador de salida para excepciones 
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        -- Aqui se deshace cualquier cambio realizado por el procedimiento almacenado
        ROLLBACK;
        -- Se genera un error con un mensaje personalizado
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Ocurrió un error al procesar el pago.';
    END;

    -- Inicio una nueva transacción
    START TRANSACTION;
    -- Inserto una nueva fila en la tabla de pagos con el ID de cliente y el monto especificados
    INSERT INTO payments (costumer_id, amount) VALUES (p_costumer_id, p_amount);
    -- Confirmo la transacción para hacer permanentes los cambios
    COMMIT;
END//

DELIMITER ;

-- la tabla transaccional "stock_request" y el procedure con TCL para evitar ingresar un mal pedido de stock

CREATE TABLE stock_request (
    request_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (product_id) REFERENCES product(id_product)
) ENGINE = InnoDB;

DELIMITER //
CREATE PROCEDURE process_stock_request(IN p_product_id INT, IN p_quantity INT)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'An error occurred while processing the stock request.';
    END;

    START TRANSACTION;
    INSERT INTO stock_request (product_id, quantity) VALUES (p_product_id, p_quantity);
    COMMIT;
END//
DELIMITER ;