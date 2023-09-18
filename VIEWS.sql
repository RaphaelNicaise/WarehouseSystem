CREATE OR REPLACE VIEW total_price_for_each_product AS (
	SELECT pr.id_product,concat(pr.product_name,' ',pr.description) as Product, pr.price,inv.quantity, 
    (price*quantity) AS totalPrice 
	FROM PRODUCTS pr LEFT JOIN INVENTORY inv ON  pr.id_product = inv.id_product
    ORDER BY id_product
);

CREATE OR REPLACE VIEW quantity_of_dist_prodcts_for_each_supplier AS (
	SELECT su.name,count(pr.id_product) as Quantity
	from suppliers su join products pr on pr.id_supplier = su.id_supplier 
	group by (su.name) order by Quantity desc
);

CREATE OR REPLACE VIEW products_info AS (
		SELECT pr.id_product AS ID_P,concat(pr.product_name,' ',pr.description) AS NAME,
		cat.category,sup.name AS suppliersinventory,inv.quantity as Quantity_in_inv,pr.price as Price_Unit
		FROM products pr JOIN categories cat on cat.id_category = pr.id_category
						 JOIN suppliers sup on pr.id_supplier = sup.id_supplier
						 JOIN inventory inv on inv.id_product = pr.id_product
		ORDER BY ID_P
);
