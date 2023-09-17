CREATE OR REPLACE VIEW total_price_for_each_product AS (
	SELECT concat(pr.product_name,' ',pr.description) as Product, pr.price,inv.quantity, 
    (price*quantity) AS totalPrice 
	FROM PRODUCTS pr LEFT JOIN INVENTORY inv ON  pr.id_product = inv.id_product
);

CREATE OR REPLACE VIEW quantity_of_dist_prodcts_for_each_supplier AS (
	SELECT su.name,count(pr.id_product) as Quantity
	from suppliers su join products pr on pr.id_supplier = su.id_supplier 
	group by (su.name)
);