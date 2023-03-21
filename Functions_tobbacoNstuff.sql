USE tobbacoNstuff;

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

-- Examples:
SELECT calculate_tax(4, 30000) as "Calculated taxes";

SELECT calculate_sale(4, 30000) as "Total payment";