USE tobbaconstuff;

-- Creando las vistas

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

