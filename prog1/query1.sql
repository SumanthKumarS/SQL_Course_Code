show databases;
create database coffee_store;
show databases;
use coffee_store;
create table products(
id INT auto_increment primary key,
name varchar(30),
price decimal(3,2)
);

create table customers(
id INT auto_increment primary key,
first_name varchar(30),
last_name varchar(30),
gender enum('M','F'),
phone_number varchar(11)
);

create table orders(
id INT auto_increment primary key,
product_id INT,
customer_id INT,
order_time datetime,
foreign key (product_id) references products(id),
foreign key (customer_id) references customers(id)
);

show tables;

select * from products;
alter table products add column coffee_origin varchar(30);
alter table products drop column coffee_origin;
select * from products;