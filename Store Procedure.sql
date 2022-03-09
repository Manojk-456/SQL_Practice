use Customer
select * from customer 
Create Procedure data    --procedure declaration
--or
create proc data    --procedure declaration
as 
begin
select name from customer;   --query
end
data   --calling of procedure 1 method
execute data   -- second method
exec data     -- third method
--produre name is not allow sp_ because it is used to master page database
alter proc data
as 
begin
select * from customer;
select * from customer where id=108;
end 
data

drop proc data;   -- delete the procedure
-- Dynamic procedure

alter proc data
@id int, 
@name  varchar(20)
as
begin
select * from customer where id=@id;
select * from customer where name=@name;
end
--data
data 107,'shyam';
data 'shyam',107;   --conveting data type (sequence eeeor ) but you solve it
data @name='shyam',@id=107;    -- named variable

--default value
alter proc data
@id int=106,
@name varchar='Ram'
as
begin
	select * from customer where id=@id;
	select * from customer where name=@name;
end
data 
-- output parameter
create proc data1
@id int,
@result int output
as
begin
 set @result=@id;
 end
 declare @id int
 exec data 1002,@id output;
 select @id;