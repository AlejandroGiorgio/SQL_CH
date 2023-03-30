USE tobbaconstuff;

-- Primero procedemos a crear los dos usuarios que tendran acceso desde el localhost con la funcion "Create"
CREATE USER 'user1'@'localhost' IDENTIFIED BY 'tobaco1';
CREATE USER 'user2'@'localhost' IDENTIFIED BY 'tobaco2';

-- Luego otorgamos los permisos con la funcion "GRANT":
-- Al usuario llamado "user1" se le darán permisos para leer, insertar datos y modificar los mismos con SELECT, INSERT, UPDATE
GRANT SELECT, INSERT, UPDATE ON tobbaconstuff.* TO 'user1@localhost';
-- Al usuario "user2" se le darán solo permisos para leer
GRANT SELECT ON tobbaconstuff.* TO 'user2@localhost';