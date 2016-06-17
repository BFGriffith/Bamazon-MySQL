create database Bamazon_db;
use Bamazon_db;
create table products (
	  itemID integer NOT NULL auto_increment,
    productName varchar(60),
    departmentName varchar(50),
    price float(99,2),
    stockQuantity integer NOT NULL,
    constraint PRIMARY KEY (itemID)
);
