SHOW databases;
use coffee_store;
alter table products add column coffee_origin varchar(30);
select * from products;
INSERT INTO products(name,price,coffee_origin) VALUES('Espresso',2.50,'Brazil');
INSERT INTO products(name,price,coffee_origin) 
VALUES('Macchiato',3.00,'Brazil'),('Cappuccino',3.50,'Costa Rica');
INSERT INTO products(name,price,coffee_origin) 
VALUES('Latte',3.00,'Indonesia'),('Americano',3.50,'Brazil'),('Flat White','3.50','Indonasia'),('Filter','3.50','India');

show tables;
UPDATE products
SET coffee_origin = 'USA'
WHERE id=2;
select * from products;
SET SQL_SAFE_UPDATES=0;

UPDATE products
SET price = '5.50',coffee_origin='Bengal'
WHERE name = 'Americano';
select * from products;

UPDATE products
SET coffee_origin = 'Indonasia'
WHERE coffee_origin = 'Indonesia';
SET SQL_SAFE_UPDATES=0;

UPDATE products
SET coffee_origin = 'USA'
WHERE coffee_origin = 'Indonasia';
SET SQL_SAFE_UPDATES=0;