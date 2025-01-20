-- 22/11/2024

-- comment(SQL)

-- for display all databases
-- show databases;

-- creating database
-- create database <db-name>;
-- create database test;

-- for activate current working databses
-- use <db-name>
-- use test;

-- 23/11/2024

-- create table 
-- create table <tb-name>(col datatype(size),....);
--  create table student(sid varchar(3),sname varchar(20),scontact varchar(10));
-- Query OK, 0 rows affected (0.03 sec)

-- mysql> show tables;
-- +----------------+
-- | Tables_in_test |
-- +----------------+
-- | student        |
-- +----------------+
-- 1 row in set (0.00 sec)


-- desc <tb-name>;
-- des student;

-- +----------+-------------+------+-----+---------+-------+
-- | Field    | Type        | Null | Key | Default | Extra |
-- +----------+-------------+------+-----+---------+-------+
-- | sid      | varchar(3)  | YES  |     | NULL    |       |
-- | sname    | varchar(20) | YES  |     | NULL    |       |
-- | scontact | varchar(10) | YES  |     | NULL    |       |
-- +----------+-------------+------+-----+---------+-------+
-- 3 rows in set (0.02 sec)


-- insert into <tb-name>(col1,..) values(' ',...);
-- insert into student values('11','keval','1234567891');


-- select * from student;
-- +------+-------+------------+
-- | sid  | sname | scontact   |
-- +------+-------+------------+
-- | 11   | keval | 1234567891 |
-- +------+-------+------------+
-- 1 row in set (0.00 sec)


-- create table student1(sid varchar(3) primary key,sname varchar(20),scontact varchar(10));

-- insert into student1 values('11','keval','1234567891');
-- Query OK, 1 row affected (0.03 sec)

-- insert into student1 values('11','keval','1234567891');
-- ERROR 1062 (23000): Duplicate entry '11' for key 'student1.PRIMARY'

-- create table student2(sid varchar(3) primary key,sname varchar(20) primary key,scontact varchar(10));
-- ERROR 1068 (42000): Multiple primary key defined


-- Composite Primary Key

-- create table stud2(sid varchar(3),sname varchar(20),scontact varchar(10),primary key(sid,sname));


-- 25/11/2024

-- insert into student1 values('11','keval','1234567891');
-- insert into student1 values('12','Raj','1234567891');
-- insert into student1 values('13','Rajul','1234567891');
-- insert into student1 values('14','keval','1234567891');
-- insert into student1 values('15','Rahul','1234567891');
-- insert into student1 values('16','Raval','1234567891');


-- where clause

-- select * from <tb-name>
-- where <expression (col-name = 'value')>;

-- select * from student1
-- where sname = 'Raj';

-- +-----+-------+------------+
-- | sid | sname | scontact   |
-- +-----+-------+------------+
-- | 12  | Raj   | 1234567891 |
-- +-----+-------+------------+
-- 1 row in set (0.00 sec)


-- select sname,scontact from student1
-- where sname = "Raj";

-- +-------+------------+
-- | sname | scontact   |
-- +-------+------------+
-- | Raj   | 1234567891 |
-- +-------+------------+
-- 1 row in set (0.00 sec)

-- Delete

-- delete All Row
-- delete from <tb-name>
-- delete from student1;

-- delete one row that we mentioned using where-clause
-- delete  from <tb-name>
-- where <expression (col-name = 'value')>;
-- delete from student1 
-- where sname = 'Raj';

-- Truncate

-- truncate table <tb-name>;
-- truncate table student1;
-- Query OK, 0 rows affected (0.06 sec) 

-- Drop

-- drop table <tb-name>;
-- drop table student1;
-- Query OK, 0 rows affected (0.04 sec)


-- Like Predicate (_%)

-- select * from <tb-name>
-- where <expression like>;  

-- First char 
-- select * from student1
-- where sname like 'K%';

-- Last char 
-- select * from student1
-- where sname like '%l';

-- second char 
-- select * from student1
-- where sname like '_a%';

-- second last char 
-- select * from student1
-- where sname like 'a_%';

-- 29/11/2024

-- create database sq;

-- create table studs1(
--     sid varchar(6) primary key,
--     sname varchar(10),
--     contact varchar(10),
--     address varchar(30)
-- );

-- insert into studs1 values("s01" , 'Raj' , "9998877889" , 'Rajkot');
-- insert into studs1 values("s02" , 'Rahul' , "9998877889" , 'Surat');
-- insert into studs1 values("s03" , 'Raval' , "9998877889" , 'Ahmedadbad');
-- insert into studs1 values("s04" , 'keval' , "9998877889" , 'Delhi');
-- insert into studs1 values("s05" , 'neha' , "9998877889" , 'Lakhnow');
-- insert into studs1 values("s06" , 'sneh' , "9998877889" , 'Vadodara');

-- create table course(
--     c_id varchar(6) primary key,
--     cousrename varchar(20),
--     description varchar(50),
--     fees numeric (7,2),
--     duration integer
-- );

-- insert into course values('c001','Node JS','Backend',50000,6);
-- insert into course values('c002','Python','Backend',60000,6);
-- insert into course values('c003','React JS','Frontend',55000,6);
-- insert into course values('c004','AI ML','Artificial Machine Learning',65000,6);

-- select * from studs1;
-- select * from course;

-- create table conf_stud(
--     sid varchar(6),
--     c_id varchar(6)
-- );

-- insert into conf_stud values('s01','c002');
-- insert into conf_stud values('s21','c003');
-- insert into conf_stud values('s01','c005');

-- FOREIGN KEY
-- syntax: foreign key <col-name> references <tb-name>(<col-name>)

-- -- exception

-- create table conf_stud1(
--     sid varchar(6) references studs1(sid),
--     c_id varchar(6) references course(c_id)
-- );

-- desc conf_stud1;

-- create table conf_stud2(
--     sid varchar(6),
--     c_id varchar(6),
--     foreign key (sid) references studs1(sid),
--     foreign key (c_id) references course(c_id)
-- );

-- desc conf_stud2;
-- +-------+------------+------+-----+---------+-------+
-- | Field | Type       | Null | Key | Default | Extra |
-- +-------+------------+------+-----+---------+-------+
-- | sid   | varchar(6) | YES  | MUL | NULL    |       |
-- | c_id  | varchar(6) | YES  | MUL | NULL    |       |
-- +-------+------------+------+-----+---------+-------+
-- 2 rows in set (0.00 sec)

-- insert into conf_stud2 values('s01','c002');
-- insert into conf_stud2 values('s01','c004');
-- insert into conf_stud2 values('s05','c002');
-- insert into conf_stud2 values('s02','c007');        // its show error
-- insert into conf_stud2 values('s08','c004');        // its show error

-- create table conf_stud3(
--     id varchar(3),
--     sid varchar(6),
--     c_id varchar(6),
--     constraint PK primary key(id),
--     constraint FK_STUD foreign key(sid) references studs1(sid),
--     constraint FK_COURSE foreign key(c_id) references course(c_id),
--     constraint CHK_id check(id like 'C%')
-- );

--  desc conf_stud3;
-- +-------+------------+------+-----+---------+-------+
-- | Field | Type       | Null | Key | Default | Extra |
-- +-------+------------+------+-----+---------+-------+
-- | id    | varchar(3) | NO   | PRI | NULL    |       |
-- | sid   | varchar(6) | YES  | MUL | NULL    |       |
-- | c_id  | varchar(6) | YES  | MUL | NULL    |       |
-- +-------+------------+------+-----+---------+-------+
-- 3 rows in set (0.00 sec)


-- 30/11/2024

-- UPDATE

-- update <tb-name> set <column-name> = <value>;
-- update studs1 set contact = 9999999999;

-- update studs1 set address = "Banglore"
-- where sid = "s01";

-- update course set fees =  fees*0.8;

-- update course set fees =  fees*0.8
-- where c_id = 'c001';




-- 05/12/2024

-- Join

()

-- THETA style

-- syntax:

-- SELECT <ColumnName1> , <ColumnName2> , <ColumnNameN>
--  FROM <TableName1> , <TableName2>
-- WHERE <TableName1>.<ColumnName1> = <TableName2>.<ColumnName2>
-- AND (Condiiton)
-- ORDER BY <ColumnName1> , <ColumnName2> , <ColumnNameN>

select description , product_rate
from product_master , sales_order_details
where product_master.product_no = sales_order_details.product_no;


alias(alternate name)

select pm , sod.product_rate
from product_master pm , sales_order_details sod
where pm.product_no = sod.product_no;

select sales_order_details.order_no , product_rate , order_date , description
from sales_order , sales_order_details , product_master
where sales_order_details.order_no = sales_order.order_no
and sales_order_details.product_no = product_master.product_no;

select sales_order_details.order_no , product_rate , order_date , description
from sales_order , sales_order_details , product_master
where sales_order_details.order_no = sales_order.order_no
and product_master.product_no = sales_order_details.product_no ;



-- ANSI style

-- syntax:

-- SELECT <ColumnName1> , <ColumnName2> , <ColumnNameN> FROM <TableName1>
-- INNER JOIN <TableName2>
-- ON <TableName1>.<ColumnName1> = <TableName2>.<ColumnName2>
-- WHERE <Condiiton>
-- ORDER BY <ColumnName1> , <ColumnName2> , <ColumnNameN>

select * from product_master
inner join sales_order_details
on sales_order_details.product_no = product_master.product_no; 

inner join sales_order on sales_order_details.order_no = sales_order.order_no;



-- 12/12/2024

select age-fun(column_name(s))
from table_name
where Condiiton
Group by column_name(s)

select city from client_master
Group by city

select city,sum(bal_due) from client_master
Group by city;

select city,max(bal_due) from client_master
Group by city;

select city,sum(bal_due) 'bal_due' from client_master
where city = 'mumbai'
Group by city
Having max(bal_due)


