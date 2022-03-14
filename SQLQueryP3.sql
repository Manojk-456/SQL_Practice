create database hcl
use hcl
create table employee
(
eid int,
ename varchar(30),
salary int,
department varchar(40)
)
select * from employee
alter table employee add  email varchar(30)
alter table employee add desg varchar(30)
alter table employee drop column department
create table department
(
depart_id int,
departname varchar(40),
eid int
)
select * from employee
select * from department
insert into employee(eid,ename,salary,email,desg) values
(1,'ajay',10000,'aj@gmail.com','founder'),
(2,'amir khan',20000,'amir@gmail.com','actors'),
(3,'kapil sharma',50000,'kp@gmail.com','comedian'),
(4,'mahesh',50000,'mahesh@gmail.com','Genius'),
(5,'rani',60000,'rani@gmail.com','developer'),
(6,'rohit',840000,'rohit@gmail.com','hr')

insert into department(depart_id,departname,eid) values
(123,'hr',5),
(524,'developer',2),
(852,'operator',1),
(963,'tester',3),
(321,'teacher',8)
select * from employee
select * from department
select * from employee inner join department on employee.eid=department.eid
select * from employee left join department on employee.eid=department.eid
select * from employee right join department on employee.eid=department.eid

select * from employee full outer join department on employee.eid=department.eid

create table data
(
empid int,
name varchar(30),
managerid int
)

insert into data(empid,name,managerid) values
(1,'manoj',5),
(2,'surya',3),
(3,'sanjay',2),
(4,'aditya',1),
(5,'radha',null),
(6,'rohini',2),
(7,'krishna',8)
select * from data

select name from data where managerid=5
select managerid from data where empid=3
select managerid from data where name='sanjay'

select e1.name from data as e1,data as e2 where e1.empid=e2.empid and e2.name='sanjay'
select e1.name from data as e1,data as e2 where e1.empid=e2.empid
select manager.name from data as Manager,data as Employee where 
Manager.empid=Employee.managerid and Employee.name='sanjay'