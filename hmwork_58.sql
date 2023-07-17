\sql
\connect root@localhost

CREATE DATABASE shop;
USE shop;

CREATE TABLE product (PRODUCT VARCHAR(128), price SMALLINT, rating DECIMAL(3,2), category VARCHAR(128), brand VARCHAR(16));

INSERT INTO product(PRODUCT, price, rating, category, brand) 
VALUES('iPhone 9','549','4.69','smartphones', 'Apple');
INSERT INTO product(PRODUCT, price, rating, category, brand) 
VALUES('iPhone X','899','4.44','smartphones', 'Apple');
INSERT INTO product(PRODUCT, price, rating, category, brand) 
VALUES('Samsung Universe 9','1249','4.09','smartphones', 'Samsung');
INSERT INTO product(PRODUCT, price, rating, category, brand) 
VALUES('OPPO F19','280','4.3','smartphones', 'OPPO');
INSERT INTO product(PRODUCT, price, rating, category, brand) 
VALUES('Huawei P30','499','4.09','smartphones', 'Huawei');
INSERT INTO product(PRODUCT, price, rating, category, brand) 
VALUES('MacBook Pro','1149','4.57','laptops', 'Apple');
INSERT INTO product(PRODUCT, price, rating, category, brand) 
VALUES('Samsung Galaxy Book','1499','4.25','laptops', 'Samsung');
INSERT INTO product(PRODUCT, price, rating, category, brand) 
VALUES('Microsoft Surface Laptop 4','1499','4.43','laptops', 'Microsoft');
INSERT INTO product(PRODUCT, price, rating, category, brand) 
VALUES('Infinix INBOOK','1099','4.54','laptops', 'Infinix');
INSERT INTO product(PRODUCT, price, rating, category, brand) 
VALUES('HP Pavilion 15-DK 1056WM','1099','4.43','laptops', 'HP Pavilion');

ALTER TABLE product ADD id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY;
ALTER TABLE product ADD INDEX(PRODUCT(20));
ALTER TABLE product ADD INDEX(price);
ALTER TABLE product ADD INDEX(rating);
ALTER TABLE product ADD INDEX(category(20));
ALTER TABLE product ADD INDEX(brand(16));

SELECT PRODUCT, price FROM product WHERE brand='Apple';
SELECT PRODUCT FROM product WHERE price<'1000';
SELECT PRODUCT FROM product WHERE price BETWEEN '500' AND '1500';
SELECT PRODUCT, price, rating FROM product WHERE brand IN ('Apple', 'Samsung', 'Huawei');
SELECT PRODUCT, category FROM product WHERE PRODUCT LIKE 'Samsung%';

\! cls