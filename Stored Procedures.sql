DELIMITER //
CREATE PROCEDURE add_supplier(IN name varchar(255),
IN phone_number varchar(255),IN email varchar(255),IN direction varchar(255),information varchar(255))
BEGIN
	INSERT INTO suppliers(name,phone_number,email,direction,information)
    VALUES (name,phone_number,email,direction,information);
END //

DELIMITER //
CREATE PROCEDURE get_suppliers (IN id_supplier CHAR(1))
BEGIN
	declare clausula varchar(255);
    declare supplierQuery varchar(255);
    
	IF id_supplier like '' THEN
        SET supplierQuery = '';
	ELSE
		SET supplierQuery = concat('WHERE id_supplier= ',id_supplier);
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
CREATE PROCEDURE add_category (IN id_category varchar(5),IN category varchar(255))
BEGIN
	INSERT INTO categories (id_category,category) VALUES (id_category,category); 
    SELECT concat('The category ',id_category,' -> ',category,' was added correctly.') AS Message;
END //

DELIMITER //
CREATE PROCEDURE get_categories ()
BEGIN
	SELECT * FROM categories;
END //