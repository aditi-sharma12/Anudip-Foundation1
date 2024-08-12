create database if not exists Anudip_Internship;
show databases;
use anudip_internship;

create table if not exists products(
	id int unique,
    Name varchar(30),
    category varchar(65),
    stock int
);

create table if not exists products(
	id int primary key,
    Name varchar(30),
    category varchar(65),
    stock int
);


show tables;

desc products;

insert into products values(101,'OS','Software',10);


insert into products values 
	(102,'Mouse','hardware',200),
    (104,'Antivirus','Software',1000),
    (103,'laptop','hardware',5);

insert into products(id,stock,name)
values
	(105, 15, "computer");
select * from products;
select id, name, stock from products;
select * from products where id=104;
select id, name, stock from products where id=104;

update products set category="Hardware and Software", stock=39 where id = 101;

delete from products where id = 101;

drop table products;