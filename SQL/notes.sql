-- 22/11/2024

-- comment(SQL)

-- for display all databases
-- show databases;


-- createing database
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

