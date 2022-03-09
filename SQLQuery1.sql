create database customer
use customer
create table customer
(
id int primary key identity(100,1),
name varchar not null
);
select * from customer;
create table product
(
id int not null,
product_name varchar(20) not null,
address varchar(25) not null,
mobile varchar(15) not null
);
select * from product; 
select * from customer;
insert into customer(name,email) values('suresh','suresh@gmail.com');
alter table customer drop column name;
alter table customer add name varchar(20);
alter table customer add email varchar(25);
alter table customer drop column name;
alter table customer drop column email;
alter table customer add  name varchar(25) ;
alter table customer add  email  varchar(20);
delete from customer where id=104;


insert into customer(name,email) values('Ram','ram@gmail.com'),('shyam','shyam@gmail.com'),('rohan','rohan@gmail.com'),('aman','aman@gmail.com');
insert into product(id,product_name,address,mobile) values(107,'Laptop','Noida','6387720731');
insert into product(id,product_name,address,mobile) values(105,'printer','lucknow','638466645');
insert into product(id,product_name,address,mobile) values(106,'pc','mumbai','6382465789');
insert into product(id,product_name,address,mobile) values(108,'mobile','delhi','63879623');
select * from product; 
alter table product drop column mobile;
update product set mobile='857496362514' where id=108; 
drop table product;
select * from customer;
select * from product;  
select * from customer inner join on  product where customer.id=product.id;
select * from customer inner join  product on customer.id=product.id; 
select * from product inner join  customer on customer.id=product.id;   
select * from customer left  join  product on customer.id=product.id;
   
select * from customer right  join  product on customer.id=product.id;    
select * from customer full outer  join  product on customer.id=product.id;