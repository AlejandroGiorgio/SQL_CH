USE tobaccoNstuff;

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

CALL order_clients_by("last_name", "DESC");
CALL register_customer("Alejandro", "Giorgio", "algo@hotmail.com", 2000555666, "1992-09-01", "Entre Rios", "Concordia");