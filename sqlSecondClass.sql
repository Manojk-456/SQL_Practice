use Mytable

--09/03/2022
create database Mytable
use Mytable
create table myTable
(
eid int identity,
ename varchar(30),
email varchar(40),
city varchar(40),
salary int
)
select * from Mytable
insert into Mytable(ename,email,city,salary) values
('rohan','rohan@gmail.com','Noida',35000)

insert into Mytable(ename,email,city,salary) values
('ram','ram@gmail.com','Noida',20000)
insert into Mytable(ename,email,city,salary) values
('shyam','shyam@gmail.com','Delhi',30000)
insert into Mytable(ename,email,city,salary) values
('Rohit','rohit@gmail.com','Noida',1000)

insert into Mytable(ename,email,city,salary) values
('Rohit','rohit@gmail.com','Noida',1000)

select * from myTable
update myTable set city='Lucknow' where eid=1;

insert into Mytable(ename,email,city,salary) values
('rohan','rohan@gmail.com','panipat',96000),
('ram','ram@gmail.com','surat',2500),
('shyam','shyam@gmail.com','gujrat',58500),
('Rohit','rohit@gmail.com','delhi',1440),
('Rohit','rohit@gmail.com','punjab',52000)

select * from mytable
select * from mytable  where city='noida' 
select * from mytable where salary='20000'
select * from myTable where city='gujrat' and ename='shyam' 

select * from myTable where city='gujrat' or salary>=50000;
select count(ename) as EmployeeName from myTable where city='punjab'
select sum(salary) from mytable
select sum(salary) as salary from mytable where city='noida'

sp_rename 'mytable','mydatabase'
select * from mydatabase
sp_rename 'mydatabase','mytable'
select * from mytable
