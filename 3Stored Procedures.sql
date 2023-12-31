DELIMITER //
CREATE PROCEDURE add_supplier(IN name varchar(255),
IN phone_number varchar(255),IN email varchar(255),IN direction varchar(255),information varchar(255))
BEGIN
	INSERT INTO suppliers(name,phone_number,email,direction,information)
    VALUES (name,phone_number,email,direction,information);
END //

DELIMITER //
CREATE PROCEDURE get_suppliers (IN id_supplier CHAR(4))
BEGIN
	declare clausula varchar(255);
    declare supplierQuery varchar(255);
    
	IF id_supplier like '' THEN
        SET supplierQuery = '';
	ELSE
		SET supplierQuery = concat('WHERE id_supplier like ',id_supplier);
	END IF; 	 
    
    SET @clausula = concat('SELECT * FROM suppliers ',supplierQuery);
    
	PREPARE runSQL FROM @clausula;
    EXECUTE runSQL;
    DEALLOCATE PREPARE runSQL;
END // 

DELIMITER //
CREATE PROCEDURE delete_supplier (IN id_supplier INT)
BEGIN
	DELETE FROM suppliers WHERE id_supplier = id_supplier;
END //

DELIMITER //
CREATE PROCEDURE add_category (IN category varchar(255))
BEGIN
	INSERT INTO categories (category) VALUES (category); 
END //

DELIMITER //
CREATE PROCEDURE get_categories ()
BEGIN
	SELECT * FROM categories order by id_category;
END //

DELIMITER //

CREATE  PROCEDURE create_product (IN product_name varchar(255),IN description varchar(255),
    IN price decimal(10,2),IN id_supplier INT,IN id_category INT)
BEGIN
	
	DECLARE supplier_exists INT;
    DECLARE category_exists INT;

    
    SELECT COUNT(*) INTO supplier_exists FROM suppliers WHERE id_supplier = id_supplier;
    SELECT COUNT(*) INTO category_exists FROM categories WHERE id_category = id_category;

    IF supplier_exists > 0 AND category_exists > 0 THEN
        
        INSERT INTO products (product_name, description, price, id_supplier, id_category)
        VALUES (product_name, description, price, id_supplier, id_category);
		
        SELECT CONCAT(product_name,' ',description, ' was added successfully!') as Message;
    ELSE
        SELECT CONCAT('The id_supplier: ', id_supplier, ' or id_category: ', id_category, ' doesn`t exist') as Message;
    END IF;
	
END //

DELIMITER //

CREATE PROCEDURE add_stock(IN p_id_product INT, IN p_in_quantity INT)
BEGIN
    DECLARE product_count INT;
    
    DECLARE EXIT HANDLER FOR 4025
    BEGIN
	ROLLBACK;
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'You cannot remove this amount of products.';
    END;
    
    
    START TRANSACTION;
    SELECT COUNT(*) INTO product_count FROM products WHERE id_product = p_id_product;
	
    IF product_count > 0 THEN
        IF p_in_quantity > 0 THEN
            
            UPDATE inventory SET quantity = quantity + p_in_quantity, last_movement = NOW() WHERE id_product = p_id_product;
            SELECT CONCAT(p_in_quantity, ' units added to id_product ', p_id_product, ' succesfuly.') AS 'Message';
        ELSEIF p_in_quantity < 0 THEN 
            
            UPDATE inventory SET quantity = quantity + p_in_quantity, last_movement = NOW() WHERE id_product = p_id_product;
            SELECT CONCAT(-p_in_quantity, ' units deleted to id_product', p_id_product, ' succesfuly.') AS 'Message';
        ELSE
            SELECT ('You didn`t added/remove any unit');
        END IF;
    ELSE
        SELECT 'Product doesn`t exists.';
    END IF;
    COMMIT;
END //

DELIMITER //
CREATE PROCEDURE get_products(IN id_product char(5))
BEGIN	
    declare clausula varchar(255);
    declare productsQuery varchar(255);
    
	IF id_product like '' THEN
        SET productsQuery = '';
	ELSE
		SET productsQuery = concat('WHERE id_product like "',id_product,'"');
	END IF; 	 
    
    SET @clausula = concat('SELECT * FROM products ',productsQuery);
    
	PREPARE runSQL FROM @clausula;
    EXECUTE runSQL;
    DEALLOCATE PREPARE runSQL;
END //

DELIMITER //
CREATE PROCEDURE stock_movements_of_id(IN _id_product INT)
BEGIN
	SELECT * FROM stock_movements where id_product = _id_product;
END //

DELIMITER //
CREATE PROCEDURE change_price (IN id_product_ INT,IN new_price DECIMAL(10,2))
BEGIN
	IF new_price >= 0 THEN
		UPDATE products set price = new_price where id_product = id_product_;
	ELSE
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'You cant set that price.';
	END IF;
END //


