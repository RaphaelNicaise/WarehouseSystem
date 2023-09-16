CREATE OR REPLACE VIEW total_price_for_each_product AS (
	SELECT concat(pr.product_name,' ',pr.description), pr.price,inv.quantity, 
    (price*quantity) AS totalPrice 
	FROM PRODUCTS pr LEFT JOIN INVENTORY inv ON  pr.id_product = inv.id_product
);

