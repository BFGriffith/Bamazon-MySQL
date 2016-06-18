create database Bamazon_db;
use Bamazon_db;
create table products (
	  itemID integer NOT NULL auto_increment,
    productName varchar(60),
    departmentName varchar(50),
    price float(62,2),
    stockQuantity integer NOT NULL,
    constraint PRIMARY KEY (itemID)
);

-- products:
INSERT INTO	products (productName, departmentName, price, stockQuantity)
	values ('lightsaber', 'weapons', 99.99, 12);
INSERT INTO	products (productName, departmentName, price, stockQuantity)
	values ('hoverboard', 'vehicles', 999.99, 100);
INSERT INTO	products (productName, departmentName, price, stockQuantity)
	values ('Gungnir', 'weapons', 10000.00, 1);
INSERT INTO	products (productName, departmentName, price, stockQuantity)
	values ('Fantasticar', 'vehicles', 100000.00, 1);
INSERT INTO	products (productName, departmentName, price, stockQuantity)
	values ('Trident of Neptune', 'weapons', 900000.00, 1);
INSERT INTO	products (productName, departmentName, price, stockQuantity)
	values ('Morgul-blades',  'weapons', 9.99, 9);
INSERT INTO	products (productName, departmentName, price, stockQuantity)
 	values ('Batmobile', 'vehicles', 500000.00, 17);
INSERT INTO	products (productName, departmentName, price, stockQuantity)
	values ('Settlers of Catan', 'games', 39.97, 75);
INSERT INTO	products (productName, departmentName, price, stockQuantity)
	values ('Crabs Adjust Humidity', 'games', 12.87, 19);
INSERT INTO	products (productName, departmentName, price, stockQuantity)
	values ('Utter Nonsense', 'games', 21.02, 30);
