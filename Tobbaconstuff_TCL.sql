-- Inicio una transacción
START TRANSACTION;

-- Inserto un nuevo registro en la tabla
INSERT INTO City (City) VALUES ('Coronda');

-- Guardardo un punto de guardado de transacción
SAVEPOINT my_savepoint;

-- Actualizo el registro
UPDATE City SET City = 'Rafaela' WHERE City = "Coronda";

-- Revierto al punto de guardado
ROLLBACK TO my_savepoint;

-- Confirmo la transacción
COMMIT;

------------------------------------------------------ 

-- Inicio Otra transacción
START TRANSACTION;

-- Inserto un nuevo registro en la tabla
INSERT INTO Product (brand, price, origin) VALUES ("51",2.30,"Brasil");

-- Guardardo un punto de guardado de transacción
SAVEPOINT my_savepoint;

-- Borro el registro
DELETE FROM Product WHERE brand = "51";

-- Revierto al punto de guardado
ROLLBACK TO my_savepoint;

-- Confirmo la transacción
COMMIT;
