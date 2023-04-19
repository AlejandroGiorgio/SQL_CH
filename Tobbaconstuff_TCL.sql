USE TobbacoNstuff;

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
