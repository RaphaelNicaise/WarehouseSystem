DELIMITER //

CREATE TRIGGER ins_outs_stock 
AFTER UPDATE ON inventory
FOR EACH ROW
BEGIN
    DECLARE quantity_change INT;

    SET quantity_change = NEW.quantity - OLD.quantity;
	IF OLD.quantity != NEW.quantity THEN
		IF quantity_change > 0 THEN
			INSERT INTO stock_movements (id_product,old_quantity, quantity,type,new_quantity)
			VALUES (OLD.id_product,OLD.quantity, quantity_change,'ins',NEW.quantity);
			
		ELSEIF quantity_change < 0 THEN
			INSERT INTO stock_movements (id_product,old_quantity, quantity,type,new_quantity)
			VALUES (OLD.id_product,OLD.quantity, -quantity_change,'outs',NEW.quantity);
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

DELIMITER //

CREATE TRIGGER update_price_of_product
AFTER UPDATE ON products
FOR EACH ROW
BEGIN
	IF OLD.price <> NEW.price THEN
		INSERT INTO price_changes (id_product,old_price,new_price)
		VALUES (new.id_product,OLD.price,NEW.price);
	END IF;
END //

