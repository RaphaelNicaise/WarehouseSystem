DELIMITER //
CREATE PROCEDURE add_supplier(IN name varchar(255),
IN phone_number varchar(255),IN email varchar(255),IN direction varchar(255),information varchar(255))
BEGIN
	INSERT INTO suppliers(name,phone_number,email,direction,information)
    VALUES (name,phone_number,email,direction,information);
END //

DELIMITER //
CREATE PROCEDURE get_suppliers (IN id_supplier CHAR(4000))
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
CREATE PROCEDURE create_product (IN product_name varchar(255),IN description varchar(255),
    IN price decimal(10,2),IN id_supplier INT,IN id_category varchar(5))
BEGIN
	
	DECLARE supplier_exists INT;
    DECLARE category_exists INT;

    
    SELECT COUNT(*) INTO supplier_exists FROM suppliers WHERE id_supplier = id_supplier;
    SELECT COUNT(*) INTO category_exists FROM categories WHERE id_category = id_category;

    IF supplier_exists > 0 AND category_exists > 0 THEN
        
        INSERT INTO products (product_name, description, price, id_supplier, id_category)
        VALUES (product_name, description, price, id_supplier, id_category);
        SET @last_product_id = LAST_INSERT_ID();
        
        INSERT INTO inventory (id_product) VALUES (@last_product_id);
        
        SELECT CONCAT(product_name, ' was added successfully!') as Message;
    ELSE
        SELECT CONCAT('The id_supplier: ', id_supplier, ' or id_category: ', id_category, ' doesn`t exist') as Message;
    END IF;
	
END //

DELIMITER //

CREATE PROCEDURE add_stock(IN id_product INT, IN in_quantity INT)
BEGIN
    
    DECLARE product_count INT;
    DECLARE inventory_count INT;
    
    SELECT COUNT(*) INTO product_count FROM products WHERE id_product = id_product;
	
    IF product_count > 0 THEN
        
        UPDATE inventory SET quantity = quantity + in_quantity WHERE id_product = id_product;
       
        UPDATE inventory SET last_movement = NOW() WHERE id_product = id_product;
        SELECT CONCAT(in_quantity, ' units added to product with id ', id_product, ' successfully.');
    ELSE
        SELECT 'Product does not exist.';
    END IF;
END //
