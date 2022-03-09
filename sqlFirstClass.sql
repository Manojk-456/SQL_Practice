--database is a collections of information of organise way.
--data ko well organise on the server
--Realational database
--non Relational database
--system database ,user define database
-- dbo(database object)
create database studentinfo
use studentinfo
create table stuDetail
(sid int identity,
sname varchar(40),
fee int,
Roll varchar(20)
)
select * from stuDetail;
create table stuResult
(
sid int identity,
sname varchar(40),
marks int,
result varchar(20)
)
select * from stuDetail;
select * from stuResult;
insert into stuDetail(sname,fee,Roll) values('Manoj Kumar',10000,'E184447');

insert into stuDetail(sname,fee,Roll) values
('Surya Kumar',2000,'E194447');
insert into stuDetail(sname,fee,Roll) values
('Sanjay Kumar',30000,'E204447');

--Table alter use to add a Collumn
alter table stuDetail add stuemail varchar(30);

--Table alter rename table name always use(sp_rename)
sp_rename 'stuDetail','Mydetail' 
select * from Mydetail
sp_rename 'Mydetail','stuDetail'
select * from stuDetail
sp_rename 'Mydetail.Roll','RollNo'

--delete data
delete from Mydetail where sid=2

--truncate table
truncate table mydetail
select * from Mydetail



