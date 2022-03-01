create database Manoj;
use manoj;
create table teacher
(
id int primary key identity(1000,1),
name varchar(25) not null,
subject varchar(20)
);
select * from teacher;
insert into teacher(name,subject) values('prabhat sukla','all rounder');

insert into teacher(name,subject) values('sayeb khan','math');
insert into teacher(name,subject) values('dinkar','english');
insert into teacher(name,subject) values('brijesh mishra','php');
insert into teacher(name,subject) values('rohit kumar','html');
select * from teacher;

create table staf_member
(
id int not null,
name varchar(20) not null,
work varchar(30) not null
);
select * from staf_member;
insert into staf_member(id,name,work) values(123,'surendra bhaiya','security');

insert into staf_member(id,name,work) values(124,'ramesh kumar','water serviber');
insert into staf_member(id,name,work) values(125,'mahesh','swiper');
insert into staf_member(id,name,work) values(126,'rinku','tea serviber');
insert into staf_member(id,name,work) values(1001,'suresh','swiper');
insert into staf_member(id,name,work) values(1002,'sakib','vender');
select * from staf_member;
drop table staf_member;
alter table staf_member drop column id;
alter table staf_member add primary key(id);


select * from teacher inner join staf_member on teacher.id=staf_member.id; 
select * from staf_member inner join teacher on teacher.id=staf_member.id;
select * from staf_member left join teacher on teacher.id=staf_member.id;
select * from staf_member right join teacher  on teacher.id=staf_member.id;
select * from staf_member full outer join teacher  on teacher.id=staf_member.id;

select * from teacher;
select * from staf_member;
select name as f,name as s from teacher,staf_member where teacher.id=staf_member.id;
select * from staf_member,teacher where teacher.id=staf_member.id;
select name from teacher
union 
select name from staf_member;
select name from teacher
union all
select name from staf_member;
select count(id) from teacher;
select min(id) from teacher;
select max(id) from teacher;
select sum(id) from teacher;
select avg(id) from teacher; 

select count(id), name  from teacher group by name having count(id)>1; 


