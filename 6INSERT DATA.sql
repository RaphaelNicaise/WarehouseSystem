INSERT INTO categories (category) VALUES ('Bakery'),
	('Sodas'),
    ('Pharmacy'),
    ('Meat'),
    ('Seafood'),
    ('Canned'),
    ('Fruits & Vegetables'),
    ('Dairy'),
    ('Alcohol');
    
insert into suppliers (name, phone_number, email, direction, information) values ('Bernhard-Brown', '+420 591 646 2580', 'sredholls0@usgs.gov', '8297 Grim Street', 'integer aliquet massa id lobortis convallis tortor risus dapibus augue');
insert into suppliers (name, phone_number, email, direction, information) values ('Blanda, Gottlieb and Ritchie', '+62 456 485 0136', 'rbricket1@netlog.com', '4436 Old Gate Way', 'consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius');
insert into suppliers (name, phone_number, email, direction, information) values ('Stark-Schuster', '+47 677 936 2596', 'csimmans2@tinypic.com', '1 Messerschmidt Pass', 'semper sapien a libero nam dui proin leo odio porttitor id consequat in');
insert into suppliers (name, phone_number, email, direction, information) values ('Schmitt, Raynor and Lueilwitz', '+351 950 415 0105', 'atudgay3@craigslist.org', '6332 Buell Park', 'et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin');
insert into suppliers (name, phone_number, email, direction, information) values ('Reichert Inc', '+1 319 488 7005', 'dstalley4@tiny.cc', '97 Darwin Street', 'volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet');
insert into suppliers (name, phone_number, email, direction, information) values ('Mayert-Bechtelar', '+46 465 885 3118', 'aschieferstein5@dailymail.co.uk', '98687 School Street', 'lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus');
insert into suppliers (name, phone_number, email, direction, information) values ('Kassulke-Yost', '+1 763 580 5922', 'utolliday6@youtube.com', '2455 Trailsway Trail', 'gravida sem praesent id massa id nisl venenatis lacinia aenean sit');
insert into suppliers (name, phone_number, email, direction, information) values ('Kuphal, Cronin and Schoen', '+63 674 598 0257', 'lcaccavale7@china.com.cn', '2074 Gina Circle', 'dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices');
insert into suppliers (name, phone_number, email, direction, information) values ('McGlynn LLC', '+7 992 734 1512', 'sbolte8@instagram.com', '0287 Stone Corner Plaza', 'amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut');
insert into suppliers (name, phone_number, email, direction, information) values ('Price, Russel and Bashirian', '+965 460 342 0331', 'sfeaver9@berkeley.edu', '7018 Carberry Crossing', 'lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus');
insert into suppliers (name, phone_number, email, direction, information) values ('Waters-Gislason', '+269 257 799 5535', 'cfaulknera@tinypic.com', '74 Anniversary Crossing', 'curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu');
insert into suppliers (name, phone_number, email, direction, information) values ('Hoppe, Block and Nolan', '+7 281 435 0701', 'adionisettib@yahoo.com', '41 Mandrake Plaza', 'curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam');
insert into suppliers (name, phone_number, email, direction, information) values ('Heathcote-Hills', '+1 330 884 1555', 'thamletc@free.fr', '53500 6th Place', 'nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in');
insert into suppliers (name, phone_number, email, direction, information) values ('Shields-Bayer', '+86 356 683 4576', 'elowersd@networkadvertising.org', '01 Pleasure Pass', 'id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla');
insert into suppliers (name, phone_number, email, direction, information) values ('O''Connell LLC', '+976 199 660 1374', 'dshippeye@archive.org', '4 Everett Street', 'vel augue vestibulum ante ipsum primis in faucibus orci');
insert into suppliers (name, phone_number, email, direction, information) values ('Sawayn, Hilll and Connelly', '+53 765 152 5853', 'kbroomhallf@etsy.com', '4771 Commercial Road', 'phasellus in felis donec semper sapien a libero nam dui proin leo');
insert into suppliers (name, phone_number, email, direction, information) values ('Russel, Kessler and Wilkinson', '+86 410 615 0405', 'vscopesg@bizjournals.com', '6790 Nancy Alley', 'augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit');
insert into suppliers (name, phone_number, email, direction, information) values ('Murphy-Funk', '+86 960 140 7904', 'rbazireh@amazon.de', '726 Lakewood Lane', 'morbi non quam nec dui luctus rutrum nulla tellus');
insert into suppliers (name, phone_number, email, direction, information) values ('Konopelski and Sons', '+420 229 946 3118', 'sduesteri@zdnet.com', '0 Prairie Rose Place', 'lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales');
insert into suppliers (name, phone_number, email, direction, information) values ('Goodwin-Balistreri', '+20 429 742 1649', 'cmincinij@biglobe.ne.jp', '17600 Debra Avenue', 'integer a nibh in quis justo maecenas rhoncus aliquam lacus');

INSERT INTO products (product_name, description, price, id_supplier, id_category)
VALUES
  ('Chocolate Chip Cookies', 'Delicious homemade cookies', 3.99, 5000, 1),
  ('Whole Wheat Bread', 'Healthy whole wheat bread', 2.49, 5001, 1),
  ('Soda Pop', 'Refreshing soda in various flavors', 1.50, 5002, 2),
  ('Pain Reliever', 'Fast-acting pain reliever', 8.99, 5003, 3),
  ('Chicken Breast', 'Fresh boneless chicken breast', 7.99, 5004, 4),
  ('Salmon Fillet', 'Wild-caught salmon fillet', 12.99, 5005, 5),
  ('Canned Tomato Soup', 'Classic tomato soup in a can', 1.99, 5006, 6),
  ('Apples', 'Crisp and juicy apples', 0.99, 5007, 7),
  ('Milk', 'Fresh cows milk', 2.29, 5008, 8),
  ('Vodka', 'Premium vodka', 19.99, 5009, 9),
  ('Brownies', 'Fudge brownies', 4.49, 5010, 1),
  ('Multigrain Cereal', 'Healthy breakfast cereal', 3.79, 5011, 1),
  ('Cola', 'Classic cola beverage', 1.50, 5012, 2),
  ('Allergy Medication', 'Relief from allergies', 9.99, 5013, 3),
  ('Ribeye Steak', 'Prime ribeye steak', 14.99, 5014, 4),
  ('Shrimp', 'Fresh shrimp', 11.99, 5015, 5),
  ('Canned Green Beans', 'Crisp green beans in a can', 1.49, 5016, 6),
  ('Oranges', 'Sweet and juicy oranges', 0.79, 5017, 7),
  ('Yogurt', 'Creamy yogurt', 2.99, 5018, 8),
  ('Whiskey', 'Premium whiskey', 24.99, 5019, 9),
  ('Bagels', 'Freshly baked bagels', 3.49, 5000, 1),
  ('White Bread', 'Soft and fluffy white bread', 2.29, 5001, 1),
  ('Lemonade', 'Refreshing lemonade', 2.00, 5002, 2),
  ('Aspirin', 'Headache relief', 5.99, 5003, 3),
  ('Pork Chops', 'Tender pork chops', 9.99, 5004, 4),
  ('Tuna Steak', 'Premium tuna steak', 10.99, 5005, 5),
  ('Canned Corn', 'Sweet corn in a can', 1.29, 5006, 6),
  ('Bananas', 'Ripe and yellow bananas', 0.69, 5007, 7),
  ('Cheese', 'Assorted cheese selection', 4.99, 5008, 8),
  ('Rum', 'Fine rum', 22.99, 5009, 9),
  ('Aviator Sunglasses', 'Classic aviator sunglasses with UV protection', 49.99, 5000, 8),
  ('Beach Umbrella', 'Large beach umbrella for shade', 24.99, 5001, 7),
  ('Sour Gummy Worms', 'Tangy and sweet gummy candies', 2.99, 5002, 1),
  ('Digital Thermometer', 'Accurate digital thermometer', 12.99, 5003, 3),
  ('Ribbed Tank Top', 'Comfortable ribbed tank top for summer', 9.99, 5004, 4),
  ('Fish Oil Capsules', 'Omega-3 fish oil capsules', 15.99, 5005, 3),
  ('Canned Pineapple', 'Sliced pineapple in a can', 1.79, 5006, 6),
  ('Strawberries', 'Fresh and juicy strawberries', 2.49, 5007, 7),
  ('Greek Yogurt', 'Creamy Greek yogurt', 3.49, 5008, 8),
  ('Craft Beer Assortment', 'Variety pack of craft beers', 18.99, 5009, 9),
  ('Sunglasses Case', 'Protective case for your sunglasses', 4.99, 5010, 8),
  ('Beach Towel', 'Colorful beach towel for lounging', 8.49, 5011, 7),
  ('Chocolate Bars', 'Assorted gourmet chocolate bars', 4.99, 5012, 1),
  ('First Aid Kit', 'Comprehensive first aid kit for emergencies', 19.99, 5013, 3),
  ('Ground Beef', 'Fresh ground beef for cooking', 6.99, 5014, 4),
  ('Lobster Tails', 'Delicious lobster tails', 23.99, 5015, 5),
  ('Canned Peas', 'Tender green peas in a can', 1.29, 5016, 6),
  ('Grapes', 'Sweet and seedless grapes', 3.99, 5017, 7),
  ('Almond Milk', 'Plant-based almond milk', 2.99, 5018, 8),
  ('Tequila', 'Premium tequila for cocktails', 29.99, 5019, 9),
  ('Wayfarer Sunglasses', 'Iconic wayfarer-style sunglasses', 39.99, 5000, 8),
  ('Beach Chair', 'Portable beach chair for relaxation', 19.99, 5001, 7),
  ('Sour Patch Kids', 'Tart and chewy candy favorites', 2.49, 5002, 1),
  ('Blood Pressure Monitor', 'Digital blood pressure monitor', 24.99, 5003, 3),
  ('Pork Ribs', 'Tasty pork ribs for grilling', 11.99, 5004, 4),
  ('Sardines', 'Canned sardines in olive oil', 1.99, 5005, 5),
  ('Canned Carrots', 'Sliced carrots in a can', 1.29, 5006, 6),
  ('Blueberries', 'Fresh and antioxidant-rich blueberries', 3.49, 5007, 7),
  ('Coconut Milk', 'Creamy coconut milk for cooking', 2.79, 5008, 8),
  ('Gin', 'Premium gin for cocktails', 21.99, 5009, 9);


CALL add_stock(1, 10);
CALL add_stock(2, 5);
CALL add_stock(3, 20);
CALL add_stock(4, 8);
CALL add_stock(5, 15);
CALL add_stock(6, 12);
CALL add_stock(7, 25);
CALL add_stock(8, 3);
CALL add_stock(9, 18);
CALL add_stock(10, 6);
CALL add_stock(11, 30);
CALL add_stock(12, 10);
CALL add_stock(13, 7);
CALL add_stock(14, 14);
CALL add_stock(15, 22);
CALL add_stock(16, 9);
CALL add_stock(17, 11);
CALL add_stock(18, 28);
CALL add_stock(19, 4);
CALL add_stock(20, 16);
CALL add_stock(21, 19);
CALL add_stock(22, 13);
CALL add_stock(23, 26);
CALL add_stock(24, 2);
CALL add_stock(25, 23);
CALL add_stock(26, 21);
CALL add_stock(27, 17);
CALL add_stock(28, 29);
CALL add_stock(29, 1);
CALL add_stock(30, 24);
CALL add_stock(31, 10);
CALL add_stock(32, 15);
CALL add_stock(33, 20);
CALL add_stock(34, 8);
CALL add_stock(35, 15);
CALL add_stock(36, 12);
CALL add_stock(37, 25);
CALL add_stock(38, 3);
CALL add_stock(39, 18);
CALL add_stock(40, 6);
CALL add_stock(41, 30);
CALL add_stock(42, 10);
CALL add_stock(43, 7);
CALL add_stock(44, 14);
CALL add_stock(45, 22);
CALL add_stock(46, 9);
CALL add_stock(47, 11);
CALL add_stock(48, 28);
CALL add_stock(49, 4);
CALL add_stock(50, 16);
CALL add_stock(51, 19);
CALL add_stock(52, 13);
CALL add_stock(53, 26);
CALL add_stock(54, 2);
CALL add_stock(55, 23);
CALL add_stock(56, 21);
CALL add_stock(57, 17);
CALL add_stock(58, 29);
CALL add_stock(59, 1);
CALL add_stock(60, 24);