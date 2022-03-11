create database manoj
use manoj
create table car
(
id int identity,
name varchar(30),
model varchar(20),
price int
)
select * from car
insert into car(name,model,price) values
('BMW','n2586',9000000),
('suzki','s2286',100000),
('Lomborgini','l4545',40000000)
insert into car(name,model,price) values
('Tyto','53502',3520000),
('safari','w4d53545',8252000),
('marsidige','qa5555',4502000),
('alto','k24556',630000)

select * from car
sp_rename 'car','carmodel'
select * from carmodel
select * from carmodel where price>5000000;
select name from carmodel where price<60000000 or model like 's%'
select * from carmodel where price<60000000 and model like '%5%'
select * from carmodel where price>500000 and model like '%6'
select * from carmodel where price<60000000 and model like '_4%'
select * from carmodel where price<>630000 --this price value only not print
select max(price) as price from carmodel
select min(price) as price from carmodel
select sum(price) as total from carmodel
select avg(price) as average_price from carmodel

select count(id) as number from carmodel where price>1000000 and price<800000000;

select * from carmodel where price>1000000 and price<800000000;
select * from carmodel where price between 100000 and 5000000;
select * from carmodel
update carmodel set model='t44513' where name='Tyto'
delete carmodel from carmodel where id=3