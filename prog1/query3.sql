create database example;
use example;
create table test(
	id int auto_increment primary key,
    name varchar(30),
    age int
);
select * from test;
show tables;
insert into test (name,age) values('ben','23');
insert into test (name,age) values('ren','26');
insert into test (name,age) values('gen','25');
insert into test (name,age) values('hen','23');

truncate table test;