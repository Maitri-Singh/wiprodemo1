create database grtlearningdb

select name from master.sys.databases

use grtlearningdb

create schema wiprodb
--DDL - Create,ALter,Truncate and Drop,Rename 
create table wiprodb.Employee(Empid int,Empname varchar(25),city varchar(20))

create table Employee(Empid int,Empname varchar(25),city varchar(20));
--Alter - Add - New Column
Alter table Employee add dept varchar(10),
                         salary decimal(8,2);
-- Modify existing column - Alter column
Alter table Employee alter column Empid  varchar(3);
--Modified the data type
Alter table Employee alter column Empid  int
--Modified the size of existing data type
Alter table Employee alter column Empname varchar(40)

--make id as not null using alter command
Alter table Employee alter column Empid int not null;

--Read the records
select * from Employee
--truncated - all records gets removed
truncate table Employee 

--drop - entire table gets deleted
drop table Employee

select * from wipro.Empl
--no keyword for rename, we use stored procedure sp_rename
create database grtlearndb

select name from master.sys.databases

use grtlearningdb

create schema wipro
--DDL - Create,ALter,Truncate and Drop,Rename 
create table wiprodb.Employeee(Empid int,Empname varchar(25),city varchar(20))

create table Employeee(Empid int,Empname varchar(25),city varchar(20));
--Alter - Add - New Column
Alter table Employeee add dept varchar(10),
                         salary decimal(8,2);
-- Modify existing column - Alter column
Alter table Employeee alter column Empid  varchar(3);
--Modified the data type
Alter table Employeee alter column Empid  int
--Modified the size of existing data type
Alter table Employeee alter column Empname varchar(40)

--make id as not null using alter command
Alter table Employeee alter column Empid int not null;

--Read the records
select * from Employeee
--truncated - all records gets removed
truncate table Employeee 

--drop - entire table gets deleted
drop table Employee

select * from wipro.Empl
--no keyword for rename, we use stored procedure sp_rename
exec sp_rename 'wipro.Empl','Employee'
--DML - Insert,Update,Delete
insert into Employeee values(11,'Zara','Pune','Coding',50000)

insert into Employee(Empid,Empname,city) values(12,'Zahir','Pune')

insert into Employee values(13,'Zara','Pune','Coding',50000),
               (14,'Sameera','Chennai','HR',90000),
			   (15,'Punit','Bangalore','Developer',60000),
			   (16,'Shreya','Pune','HR',80000)

update Employee set salary=salary+1000 where dept='coding' or dept='developer'

delete from Employee where empid=14

--DQL - Select
select * from EMployee

select Empname,Dept from Employee where Dept = 'Coding'

--Operators - And,Or,IN,Between,Like
select * from Employee

select * from Employeee where salary>55000 and dept='coding'
select * from Employeee where salary>55000 or dept='coding'
select * from Employeee where salary between 50000 and 70000
select * from EMployeee where dept in('Coding','hr')
--% any number of characters , _ denotes one character
select * from Employeee where empname like '%a' --last character is a
select * from Employeee where empname like '%i_'
--like operator with list of characters
select * from Employeee where empname like '%[ya]' --last character shall be either y or a
select * from Employeee where empname like '[sz]%'

select * from Employeee where empname like '[s-z]%' 
select * from Employeee where empname like '[^s-z]%' 

select * from Employeee where empname not like '%a'


create table Product(Prodid int not null,proName varchar(30),price decimal(10,2),Qty int)

select proname,price,qty,price * qty as TotalPrice from Product

	
alter table Product add discount varchar(6)

select * from Product where discount like '10!%' escape '!'

alter table Product add discount varchar(6)

select * from Product where discount like '10!%' escape '!'

insert into product(prodid,proname,price,qty) values(113,'iPod',700,2)

alter table product add constraint UQ_Proname unique(proname)

delete from product where proname='ipod'

alter table product add primary key(prodid)

--Foreign Key 
create table department(did int primary key,deptname varchar(20) not null unique)

insert into department values(1,'HR'),(2,'Developer'),(3,'Testing')

--Employee table - drop column dname
alter table employee drop column dept

alter table employee add deptid int foreign key references department(did)

alter table employee add deptid int

alter table employee 
add constraint FK_deptid foreign key(deptid) references department(did)

insert into employee(empid,empname,city,salary) values(19,'anu','pune',40000)

--default 
alter table employee add constraint df_did default 1 for deptid

--check - 
alter table employee add check(salary >=50000)

--DML - Insert,Update,Delete
insert into Employee values(11,'Zara','Pune','Coding',50000)

insert into Employee(Empid,Empname,city) values(12,'Zahir','Pune')

insert into Employee values(13,'Zara','Pune','Coding',50000),
               (14,'Sameera','Chennai','HR',90000),
			   (15,'Punit','Bangalore','Developer',60000),
			   (16,'Shreya','Pune','HR',80000)

update Employee set salary=salary+1000 where dept='coding' or dept='developer'

delete from Employee where empid=14

--DQL - Select
select * from EMployee

select Empname,Dept from Employee where Dept = 'Coding'

--Operators - And,Or,IN,Between,Like
select * from Employee

select * from Employee where salary>55000 and dept='coding'
select * from Employee where salary>55000 or dept='coding'
select * from Employee where salary between 50000 and 70000
select * from EMployee where dept in('Coding','hr')
--% any number of characters , _ denotes one character
select * from Employee where empname like '%a' --last character is a
select * from Employee where empname like '%i_'
--like operator with list of characters
select * from Employee where empname like '%[ya]' --last character shall be either y or a
select * from Employee where empname like '[sz]%'

select * from Employee where empname like '[s-z]%' 
select * from Employee where empname like '[^s-z]%' 

select * from Employee where empname not like '%a'


create table Product(Prodid int not null,proName varchar(30),price decimal(10,2),Qty int)

select proname,price,qty,price * qty as TotalPrice from Product

	
alter table Product add discount varchar(6)

select * from Product where discount like '10!%' escape '!'

alter table Product add discount varchar(6)

select * from Product where discount like '10!%' escape '!'

insert into product(prodid,proname,price,qty) values(113,'iPod',700,2)

alter table product add constraint UQ_Proname unique(proname)

delete from product where proname='ipod'

alter table product add primary key(prodid)

--Foreign Key 
create table department(did int primary key,deptname varchar(20) not null unique)

insert into department values(1,'HR'),(2,'Developer'),(3,'Testing')

--Employee table - drop column dname
alter table employeee drop column dept

alter table employeee add deptid int foreign key references department(did)

alter table employeee add deptid int

alter table employee 
add constraint FK_deptid foreign key(deptid) references department(did)

insert into Employeee(empid,empname,city,salary) values(19,'anu','pune',40000)

--default 
alter table employeee add constraint df_did default 1 for deptid

--check - 
alter table employeee add check(salary >=50000)



--day12
--Aggregate functions - count,sum,avg,min,max
select count(*) as "No:ofEmployees" from employee;
select min(salary) as "MinimumSalary" from employee;
select max(salary) as "MaximumSalary" from employee;
select sum(salary) as "TotalSum" from employee;
select avg(salary) as "AverageSalary" from employee;


--Groupby
select city,count(*) from employee group by city
--having - filters the result of group by clause
select deptid,count(*) from employee group by deptid having count(*)>2

select deptid,city,count(*) from employee group by deptid,city having count(*)>1

--Function
--System Functions
--Date function
select getdate() as TodaysDate
select SYSDATETIME() as Currentdate

alter table employee add joiningdate date

select * from employee where year(joiningdate)>2020 
select * from employee where month(joiningdate)=09

select * from employee where joiningdate >= DateAdd(Day,-30,GetDate())

select Empname,DateDiff(year,joiningdate,getdate()) as Experienceinyears
from employee 

insert into EMployee(empid,empname,deptid,joiningdate) values
(19,'Neha',1,'2023-07-25')

insert into EMployee(empid,empname,deptid,joiningdate) values
(20,'Mahim',3,getdate())

--math functions
select rand() as Randomnumber

select cast(rand() * 50 as int) as RandomInteger

select 10 % 3 as Modfunction
--even employees
select * from employee where empid %2 = 0

--user defined function
--Scalar Valued function - returns single value
create function GetCountEmployeee()
returns int
as
begin
   declare @noofempl int;--scalar variable
   select @noofempl=count(*) from employee;
   return @noofempl;
end;

--use function - depends on select in order to call it
select dbo.GetCountEmployee()

alter function GetCountEmployee(@city varchar(20))
returns int
as
begin
   declare @noofempl int;--scalar variable
   select @noofempl=count(*) from employee where city=@city;
   return @noofempl;
end;

select dbo.GetCountEmployee('pune')


--Table valued function
create or alter function 
GetEmployeeSal(@minsalary decimal(8,2),@maxsalary decimal(8,2))
returns table
as
return 
(  
   select * from Employee where salary between @minsalary and @maxsalary
) 

select * from dbo.GetEmployeeSal(55000,70000)

create or alter function eastorwest(@logitude int)
returns char(4) 
as
begin
   declare @res char(4)
   set @res='Same'
   if(@logitude > 0.0)
     set @res='East'
   else
	  set @res='West'
	return @res
end

select dbo.eastorwest(-12)


--Stored Procedure - query to be executed repeatedly - put the query in sp
create or alter procedure sp_emp
as 
begin
  select * from employee;
end

sp_emp

create or alter procedure sp_emp(@minsal decimal(8,2),@maxsal decimal(8,2))
as 
begin
  select * from dbo.GetEmployeeSal(@minsal,@maxsal);
end

sp_emp 60000,80000

--Joins 
create table Student(Regno int not null,stname varchar(35),dept varchar(20),city varchar(25));

create table Fees(Regno int not null,dept varchar(20),FeesPaid decimal(10,2),Paidon date)

select * from student;
select * from Fees

--Inner Join - Common REcords
select S.Regno,S.stname,S.dept,F.FeesPaid,F.Paidon 
from Student S inner join Fees F
on S.Regno = F.Regno

select S.Regno,S.stname,S.dept,F.FeesPaid,F.Paidon 
from Student S,Fees F
where S.Regno = F.Regno

--OuterJoins - Find the unmatching records
--Left Outer -
select S.Regno,S.stname,S.dept,F.FeesPaid,F.Paidon 
from Student S left outer join Fees F
on S.Regno = F.Regno

select e.empid,e.empname,d.deptname from employee e left join department d
on e.deptid = d.did

--Right outer join
select S.Regno,S.stname,S.dept,F.Regno,F.dept,F.FeesPaid,F.Paidon 
from Student S right outer join Fees F
on S.Regno = F.Regno

--Cross Join
select S.Regno,S.stname,S.dept,F.Regno,F.dept,F.FeesPaid,F.Paidon 
from Student S cross join Fees F

--Self join - Join with same table - alias name
alter table Employee add Managerid int

select distinct e.empid,e.empname from employee e join employee e2
on e.empid=e2.managerid

select e.empid,e.empname,e2.empname from employee e join employee e2
on e.empid=e2.managerid