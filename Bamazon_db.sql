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

use Bamazon_db;
create table departments (
	departmentID integer NOT NULL auto_increment,
  departmentName varchar(60),
	overheadCosts decimal(62,2),
  totalSales decimal(62,2),
  constraint PRIMARY KEY (departmentID)
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

-- departments:
INSERT INTO	departments (departmentName, overheadCosts, totalSales)
	values ('weapons', 999.99, 10.99);
INSERT INTO	departments (departmentName, overheadCosts, totalSales)
	values ('vehicles', 10000.99, 100.99);
INSERT INTO	departments (departmentName, overheadCosts, totalSales)
	values ('games', 500.99, 300.99);
