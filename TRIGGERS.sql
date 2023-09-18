DELIMITER //

CREATE TRIGGER ins_outs_stock 
AFTER UPDATE ON inventory
FOR EACH ROW
BEGIN
    DECLARE quantity_change INT;

    SET quantity_change = NEW.quantity - OLD.quantity;
	IF OLD.quantity != NEW.quantity THEN
		IF quantity_change > 0 THEN
			INSERT INTO stock_movements (id_product, type, quantity)
			VALUES (OLD.id_product, 'ins', quantity_change);
			
		ELSEIF quantity_change < 0 THEN
			INSERT INTO stock_movements (id_product, type, quantity)
			VALUES (OLD.id_product, 'outs', -quantity_change);
		END IF;
	END IF;
    
END //

DELIMITER //

CREATE TRIGGER insert_product_into_inventory
AFTER INSERT ON products
FOR EACH ROW
BEGIN
    INSERT INTO inventory (id_product, quantity)
    VALUES (NEW.id_product, 0);
END //

