create database example;
use example;
create table test(
	id int auto_increment primary key,
    name varchar(30),
    age int
);
select * from test;
show tables;
drop table test;