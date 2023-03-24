USE TOBBACONSTUFF;

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
