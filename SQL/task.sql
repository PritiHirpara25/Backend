-- 29/11/2024 (BOOK:P-158)

-- DATABASE(task)

create database task1;

use task1;

create table client_master(
    client_no varchar(6),
    name varchar(20),
    address1 varchar(30),
    address2 varchar(30),
    city varchar(15),
    pincode numeric(8),
    state varchar(15),
    bal_due numeric(10,2),
    constraint PK_client_no primary key (client_no)
);

 insert into client_master values('C00001', 'Ivan Bayross', 'A', '5', 'Mumbai', 400054, 'Maharashtra', 15000);
insert into client_master values('C00002', 'Mamta Muzumdar', 'C', '10', 'Madras', 780001, 'Tamil Nadu', 0);
insert into client_master values('C00003', 'Chhaya Bankar', 'B', '7', 'Mumbai', 400057, 'Maharashtra', 5000);
insert into client_master values('C00004', 'Ashwini Joshi', 'E', '2', 'Bangalore', 560001, 'Karnataka', 0);
insert into client_master values('C00005', 'Hansel Colaco', 'A', '2', 'Mumbai', 400060, 'Maharashtra', 2000);
insert into client_master values('C00006', 'Deepak Sharma', 'B', '3', 'Mangalore', 560050, 'Karnataka', 0);

select * from client_master;
+-----------+----------------+----------+----------+-----------+---------+-------------+----------+
| client_no | name           | address1 | address2 | city      | pincode | state       | bal_due  |
+-----------+----------------+----------+----------+-----------+---------+-------------+----------+
| C00001    | Ivan Bayross   | A        | 5        | Mumbai    |  400054 | Maharashtra | 15000.00 |
| C00002    | Mamta Muzumdar | C        | 10       | Madras    |  780001 | Tamil Nadu  |     0.00 |
| C00003    | Chhaya Bankar  | B        | 7        | Mumbai    |  400057 | Maharashtra |  5000.00 |
| C00004    | Ashwini Joshi  | E        | 2        | Bangalore |  560001 | Karnataka   |     0.00 |
| C00005    | Hansel Colaco  | A        | 2        | Mumbai    |  400060 | Maharashtra |  2000.00 |
| C00006    | Deepak Sharma  | B        | 3        | Mangalore |  560050 | Karnataka   |     0.00 |
+-----------+----------------+----------+----------+-----------+---------+-------------+----------+
6 rows in set (0.00 sec)

create table product_master(
    product_no varchar(6),
    description varchar(15),
    profit_percent numeric(4,2),
    unit_measure varchar(10),
    qty_on_hand numeric(8),
    reorder_lvl numeric(8),
    sell_price numeric(8,2),
    cost_price numeric(8,2),
    constraint PK_product_no primary key (product_no)
);

insert into product_master values('P00001', 'T-Shirts', 5, 'Piece', 200, 50, 350, 250);
insert into product_master values('P0345', 'Shirts', 6, 'Piece', 150, 50, 500, 350);
insert into product_master values('P06734', 'Cotton Jeans', 5, 'Piece', 100, 20, 600, 450);
insert into product_master values('P07865', 'Jeans', 5, 'Piece', 100, 20, 750, 500);
insert into product_master values('P07868', 'Trousers', 2, 'Piece', 150, 50, 850, 550);
insert into product_master values('P07885', 'Pull Overs', 2.5, 'Piece', 80, 30, 700, 450);
insert into product_master values('P07965', 'Denim Shirts', 4, 'Piece', 100, 40, 350, 250);
insert into product_master values('P07975', 'Lycra Tops', 5, 'Piece', 70, 30, 300, 175);
insert into product_master values('P08865', 'Skirts', 5, 'Piece', 75, 30, 450, 300);

select * from product_master;
+------------+--------------+----------------+--------------+-------------+-------------+------------+------------+
| product_no | description  | profit_percent | unit_measure | qty_on_hand | reorder_lvl | sell_price | cost_price |
+------------+--------------+----------------+--------------+-------------+-------------+------------+------------+
| P00001     | T-Shirts     |           5.00 | Piece        |         200 |          50 |     350.00 |     250.00 |
| P0345      | Shirts       |           6.00 | Piece        |         150 |          50 |     500.00 |     350.00 |
| P06734     | Cotton Jeans |           5.00 | Piece        |         100 |          20 |     600.00 |     450.00 |
| P07865     | Jeans        |           5.00 | Piece        |         100 |          20 |     750.00 |     500.00 |
| P07868     | Trousers     |           2.00 | Piece        |         150 |          50 |     850.00 |     550.00 |
| P07885     | Pull Overs   |           2.50 | Piece        |          80 |          30 |     700.00 |     450.00 |
| P07965     | Denim Shirts |           4.00 | Piece        |         100 |          40 |     350.00 |     250.00 |
| P07975     | Lycra Tops   |           5.00 | Piece        |          70 |          30 |     300.00 |     175.00 |
| P08865     | Skirts       |           5.00 | Piece        |          75 |          30 |     450.00 |     300.00 |
+------------+--------------+----------------+--------------+-------------+-------------+------------+------------+
9 rows in set (0.00 sec)


create table salesman_master(
    salesman_no varchar(6),
    salesman_name varchar(20),
    address1 varchar(30),
    address2 varchar(30),
    city varchar(20),
    pincode numeric(8),
    state varchar(20),
    sal_amt numeric(8,2),
    tgt_to_get numeric(6,2),
    ytd_sales numeric(6,2),
    remarks varchar(60),
    constraint PK_salesman_no primary key (salesman_no)
);

insert into salesman_master values('S00001', 'Aman', 'A/14', 'Worli', 'Mumbai', 400002, 'Maharashtra', 3000, 100, 50, 'Good');
insert into salesman_master values('S00002', 'Omkar', '65', 'Nariman', 'Mumbai', 400001, 'Maharashtra', 3000, 200, 100, 'Good');
insert into salesman_master values('S00003', 'Raj', 'P-7', 'Bandra', 'Mumbai', 400032, 'Maharashtra', 3000, 200, 100, 'Good');
insert into salesman_master values('S00004', 'Ashish', 'A/5', 'Juhu', 'Mumbai', 400044, 'Maharashtra', 3500, 200, 150, 'Good');

select * from salesman_master;
+-------------+---------------+----------+----------+--------+---------+-------------+---------+------------+-----------+---------+
| salesman_no | salesman_name | address1 | address2 | city   | pincode | state       | sal_amt | tgt_to_get | ytd_sales | remarks |
+-------------+---------------+----------+----------+--------+---------+-------------+---------+------------+-----------+---------+
| S00001      | Aman          | A/14     | Worli    | Mumbai |  400002 | Maharashtra | 3000.00 |     100.00 |     50.00 | Good    |
| S00002      | Omkar         | 65       | Nariman  | Mumbai |  400001 | Maharashtra | 3000.00 |     200.00 |    100.00 | Good    |
| S00003      | Raj           | P-7      | Bandra   | Mumbai |  400032 | Maharashtra | 3000.00 |     200.00 |    100.00 | Good    |
| S00004      | Ashish        | A/5      | Juhu     | Mumbai |  400044 | Maharashtra | 3500.00 |     200.00 |    150.00 | Good    |
+-------------+---------------+----------+----------+--------+---------+-------------+---------+------------+-----------+---------+
4 rows in set (0.00 sec)

create table sales_order(
    order_no varchar(6),
    client_no varchar(6), 
    order_date date NOT NULL,
    dely_addr varchar(25),
    salesman_no varchar(6),
    dely_type char(1),
    bill_yn char(1),
    dely_date date,
    order_status varchar(10),
    CONSTRAINT PK_order_no primary key (order_no),
    CONSTRAINT CHK_order_no CHECK (order_no LIKE 'O%'),
    CONSTRAINT FK_CLIENT_ID FOREIGN KEY (client_no) REFERENCES client_master(client_no),
    CONSTRAINT FK_SALESMAN_ID FOREIGN KEY (salesman_no) REFERENCES salesman_master(salesman_no),
    CONSTRAINT CHK_order_status CHECK ((order_status = "In Process") || (order_status = "Fulfilled") || (order_status = "BackOrder") || (order_status = "Cancelled"))
);

insert into sales_order values('O19001', 'C00001', '04-06-12', 'Mumbai', 'S00001', 'F', 'N', '02-07-20', 'In Process');
insert into sales_order values('O19002', 'C00002', '04-06-25', 'Surat', 'S00002', 'P', 'N', '02-06-27', 'Cancelled');
insert into sales_order values('O46865', 'C00003', '04-02-18', 'Mumbai', 'S00003', 'F', 'Y', '02-02-20', 'Fulfilled');
insert into sales_order values('O19003', 'C00001', '04-04-03', 'Pune', 'S00001', 'F', 'Y', '02-04-07', 'Fulfilled');
insert into sales_order values('O46866', 'C00004', '04-05-20', 'Pune', 'S00002', 'P', 'N', '02-05-22', 'Cancelled');
insert into sales_order values('O19008', 'C00005', '04-05-24', 'Mumbai', 'S00004', 'F', 'N', '02-07-26', 'In Process');

select * from sales_order;
+----------+-----------+------------+-----------+-------------+-----------+---------+------------+--------------+
| order_no | client_no | order_date | dely_addr | salesman_no | dely_type | bill_yn | dely_date  | order_status |
+----------+-----------+------------+-----------+-------------+-----------+---------+------------+--------------+
| O19001   | C00001    | 2004-06-12 | Mumbai    | S00001      | F         | N       | 2002-07-20 | In Process   |
| O19002   | C00002    | 2004-06-25 | Surat     | S00002      | P         | N       | 2002-06-27 | Cancelled    |
| O19003   | C00001    | 2004-04-03 | Pune      | S00001      | F         | Y       | 2002-04-07 | Fulfilled    |
| O19008   | C00005    | 2004-05-24 | Mumbai    | S00004      | F         | N       | 2002-07-26 | In Process   |
| O46865   | C00003    | 2004-02-18 | Mumbai    | S00003      | F         | Y       | 2002-02-20 | Fulfilled    |
| O46866   | C00004    | 2004-05-20 | Pune      | S00002      | P         | N       | 2002-05-22 | Cancelled    |
+----------+-----------+------------+-----------+-------------+-----------+---------+------------+--------------+
6 rows in set (0.01 sec)

create table sales_order_details(
    order_no varchar(6),
    product_no varchar(6),
    qty_ordered numeric(8),
    qty_disp numeric(8),
    product_rate numeric(10,2),
    CONSTRAINT FK_order_no FOREIGN KEY (order_no) REFERENCES sales_order(order_no),
    CONSTRAINT FK_product_no FOREIGN KEY (product_no) REFERENCES product_master(product_no)
);

insert into sales_order_details values('O19001', 'P00001', 4, 4, 525);
insert into sales_order_details values('O19001', 'P07965', 2, 1, 8400);
insert into sales_order_details values('O19001', 'P07885', 2, 1, 5250);
insert into sales_order_details values('O19002', 'P00001', 10, 0, 525);
insert into sales_order_details values('O46865', 'P07868', 3, 3, 3150);
insert into sales_order_details values('O46865', 'P07885', 3, 1, 5250);
insert into sales_order_details values('O46865', 'P00001', 10, 10, 525);
insert into sales_order_details values('O46865', 'P0345', 4, 4, 1050);
insert into sales_order_details values('O19003', 'P08865', 2, 2, 1050);
insert into sales_order_details values('O19003', 'P06734', 1, 1, 12000);
insert into sales_order_details values('O46866', 'P07965', 1, 0, 8400);
insert into sales_order_details values('O19008', 'P00001', 10, 5, 525);
insert into sales_order_details values('O19008', 'P07975', 5, 3, 1050);

select * from sales_order_details;
+----------+------------+-------------+----------+--------------+
| order_no | product_no | qty_ordered | qty_disp | product_rate |
+----------+------------+-------------+----------+--------------+
| O19001   | P00001     |           4 |        4 |       525.00 |
| O19001   | P07965     |           2 |        1 |      8400.00 |
| O19001   | P07885     |           2 |        1 |      5250.00 |
| O19002   | P00001     |          10 |        0 |       525.00 |
| O46865   | P07868     |           3 |        3 |      3150.00 |
| O46865   | P07885     |           3 |        1 |      5250.00 |
| O46865   | P00001     |          10 |       10 |       525.00 |
| O46865   | P0345      |           4 |        4 |      1050.00 |
| O19003   | P06734     |           1 |        1 |     12000.00 |
| O46866   | P07965     |           1 |        0 |      8400.00 |
| O19008   | P00001     |          10 |        5 |       525.00 |
| O19008   | P07975     |           5 |        3 |      1050.00 |
+----------+------------+-------------+----------+--------------+
12 rows in set (0.00 sec)




-- 30/11/2024 (BOOK:P-135)

DATABASE(task1)

3.Exercise on retrieving records from a table

-- a.find out the names of all the clients.

 select name from client_master;
+----------------+
| name           |
+----------------+
| Ivan Bayross   |
| Mamta Muzumdar |
| Chhaya Bankar  |
| Ashwini Joshi  |
| Hansel colaco  |
| Deepak Shrama  |
+----------------+
6 rows in set (0.00 sec)

-- b.Retrieve the entire content of the client_master table.

select * from client_master;
+----------+----------------+--------------+----------------+----------+---------+------------+----------+
| clientno | name           | address1     | address2       | city     | pincode | state      | baldue   |
+----------+----------------+--------------+----------------+----------+---------+------------+----------+
| c00001   | Ivan Bayross   | 10,Bapunagar | 12,Vishalnagar | Mumbai   |  400054 | Maharastra | 15000.00 |
| c00002   | Mamta Muzumdar | 10,Bapunagar | 12,Vishalnagar | Madras   |  780001 | Tamilnadu  |     0.00 |
| c00003   | Chhaya Bankar  | 10,Bapunagar | 12,Vishalnagar | Mumbai   |  400057 | Maharastra |  5000.00 |
| c00004   | Ashwini Joshi  | 10,Bapunagar | 12,Vishalnagar | Banglore |  560001 | Karnataka  |     0.00 |
| c00005   | Hansel colaco  | 10,Bapunagar | 12,Vishalnagar | Mumbai   |  400060 | Maharastra |  2000.00 |
| c00006   | Deepak Shrama  | 10,Bapunagar | 12,Vishalnagar | Manglore |  560050 | Karnataka  |     0.00 |
+----------+----------------+--------------+----------------+----------+---------+------------+----------+
6 rows in set (0.00 sec)

-- c.Retrieve the list of names,city and state of all the clients

select name,city,state from client_master;
+----------------+----------+------------+
| name           | city     | state      |
+----------------+----------+------------+
| Ivan Bayross   | Mumbai   | Maharastra |
| Mamta Muzumdar | Madras   | Tamilnadu  |
| Chhaya Bankar  | Mumbai   | Maharastra |
| Ashwini Joshi  | Banglore | Karnataka  |
| Hansel colaco  | Mumbai   | Maharastra |
| Deepak Shrama  | Manglore | Karnataka  |
+----------------+----------+------------+
6 rows in set (0.00 sec)

-- d.List the various table available from the product_master table

-- e.List all the clients who are located in the Mumbai

select * from client_master
    -> where city = 'mumbai';
+----------+---------------+--------------+----------------+--------+---------+------------+----------+
| clientno | name          | address1     | address2       | city   | pincode | state      | baldue   |
+----------+---------------+--------------+----------------+--------+---------+------------+----------+
| c00001   | Ivan Bayross  | 10,Bapunagar | 12,Vishalnagar | Mumbai |  400054 | Maharastra | 15000.00 |
| c00003   | Chhaya Bankar | 10,Bapunagar | 12,Vishalnagar | Mumbai |  400057 | Maharastra |  5000.00 |
| c00005   | Hansel colaco | 10,Bapunagar | 12,Vishalnagar | Mumbai |  400060 | Maharastra |  2000.00 |
+----------+---------------+--------------+----------------+--------+---------+------------+----------+
3 rows in set (0.02 sec)

-- f.find the names of salesman who have a salary equal to Rs.3000

select * from salesman_master
    -> where salamt = 3000;
+------------+--------------+----------+----------+--------+---------+------------+---------+---------+----------+---------+
| salesmanno | salesmanname | address1 | address2 | city   | pincode | state      | salamt  | tgttget | ytdsales | remarks |
+------------+--------------+----------+----------+--------+---------+------------+---------+---------+----------+---------+
| s00001     | Aman         | A/14     | Worli    | Mumbai |  400002 | Maharastra | 3000.00 |  100.00 |    50.00 | Good    |
| s00002     | Omkar        | 65       | Nariman  | Mumbai |  400001 | Maharastra | 3000.00 |  200.00 |   100.00 | Good    |
| s00003     | Raj          | p-7      | Bandra   | Mumbai |  400032 | Maharastra | 3000.00 |  200.00 |   100.00 | Good    |
| s00004     | Ashish       | A/5      | Juhu     | Mumbai |  400044 | Maharastra | 3000.00 |  200.00 |   150.00 | Good    |
+------------+--------------+----------+----------+--------+---------+------------+---------+---------+----------+---------+
4 rows in set (0.03 sec)


4. Exercise on updating records in table

-- a.change the city of clientno 'c00005' to 'Banglore'

update client_master set city = 'Banglore'
where clientno = 'c00005';

-- b.change the Baldue of clientno 'c00001' to Rs.1000.

update client_master set baldue = 1000
where clientno = 'c00001';

-- c. change the cost price of 'Trousers' to Rs.950.00

update product_master set costprice = 950
where description = 'Trousers';

-- d.change the city of the salesman to pune.

update salesman_master set city = 'pune';


5.Exercise on deleting records in a table.

-- a.Delete all salesman from the salesman_master whose salaries are equal to Rs.3500

delete from salesman_master
where salamt = '3500';

-- b.Delete all Products from product_master wherethe quantity on hand is equal to 100.

delete from product_master
where qtyonhand = 100;

-- c.delete from client_master where the column state holds the value 'Tamil Nadu'. 

delete from client_master
where state = 'Tamilnadu';


-- 05/12/2024

-- Theta style

1.Exercise on Using Having and Group by clauses:

-- a.Print the description and total qty sold for each product.

select pm.description , sum(sod.qty_disp)
from product_master pm , sales_order_details sod
where pm.product_no = sod.product_no
group by pm.description;

+--------------+-------------------+
| description  | sum(sod.qty_disp) |
+--------------+-------------------+
| T-Shirts     |                19 |
| Denim Shirts |                 1 |
| Pull Overs   |                 2 |
| Trousers     |                 3 |
| Shirts       |                 4 |
| Cotton Jeans |                 1 |
| Lycra Tops   |                 3 |
| Skirts       |                 2 |
+--------------+-------------------+

-- b. Find the value of each product sold.

select description , sum(qty_disp* sod.product_rate)
from product_master pm , sales_order_details sod
where pm.product_no = sod.product_no
group by pm.description;

+--------------+---------------------------------+
| description  | sum(qty_disp* sod.product_rate) |
+--------------+---------------------------------+
| T-Shirts     |                         9975.00 |
| Denim Shirts |                         8400.00 |
| Pull Overs   |                        10500.00 |
| Trousers     |                         9450.00 |
| Shirts       |                         4200.00 |
| Cotton Jeans |                        12000.00 |
| Lycra Tops   |                         3150.00 |
| Skirts       |                         2100.00 |
+--------------+---------------------------------+

-- 3. calculate the average qty sold for each client that has a maximum order of 15000.00

select name , avg(qty_disp) 
from client_master cm, sales_order_details sod , sales_order so
where cm.client_no = so.client_no
and so.order_no = sod.order_no  
group by cm.name
having max(sod.qty_disp*sod.product_rate) <= 15000.00;

+----------------+---------------+
| name           | avg(qty_disp) |
+----------------+---------------+
| Ivan Bayross   |        1.8000 |
| Mamta Muzumdar |        0.0000 |
| Chhaya Bankar  |        4.5000 |
| Ashwini Joshi  |        0.0000 |
| Hansel Colaco  |        4.0000 |
+----------------+---------------+


-- 4. find out the total of all the billed orders for the month of the june.

select sum(sod.order_no)
from sales_order_details sod , sales_order so
where so.order_no = sod.order_no
group by sod.order_no
having so.order_date like '%06%';



2. Exercises on Joins and Correlation:

--> a.Find out the product, which have been sold to 'Ivan Bayross'.

/* ANSI style*/

select pm.description,cm.name as client_name from product_master pm 
inner join sales_order_details sod on sod.product_no = pm.product_no 
inner join sales_order so on so.order_no = sod.order_no 
inner join client_master cm on cm.client_no = so.client_no 
where cm.name = 'Ivan Bayross';

+--------------+--------------+
| description  | client_name  |
+--------------+--------------+
| T-Shirts     | Ivan Bayross |
| Denim Shirts | Ivan Bayross |
| Pull Overs   | Ivan Bayross |
| Cotton Jeans | Ivan Bayross |
+--------------+--------------+


/*  Theta style */

select pm.description,cm.name as client_name from sales_order so,sales_order_details sod,product_master pm,client_master cm
where so.order_no = sod.order_no and sod.product_no = pm.product_no and cm.client_no = so.client_no and cm.name = 'Ivan Bayross';

+--------------+--------------+
| description  | client_name  |
+--------------+--------------+
| T-Shirts     | Ivan Bayross |
| Denim Shirts | Ivan Bayross |
| Pull Overs   | Ivan Bayross |
| Cotton Jeans | Ivan Bayross |
+--------------+--------------+


--> b.Find out the products and their quantities that will have to be delivered in the current month.

    /* ANSI style */

-- here current month consider as a 06

select pm.description,so.order_no,so.order_date,sod.qty_disp,so.order_status from sales_order so 
inner join sales_order_details sod on so.order_no = sod.order_no
inner join product_master pm on pm.product_no = sod.product_no
where order_date like "%06%";

+--------------+----------+------------+----------+--------------+
| description  | order_no | order_date | qty_disp | order_status |
+--------------+----------+------------+----------+--------------+
| T-Shirts     | O19001   | 2004-06-12 |        4 | In Process   |
| Denim Shirts | O19001   | 2004-06-12 |        1 | In Process   |
| Pull Overs   | O19001   | 2004-06-12 |        1 | In Process   |
| T-Shirts     | O19002   | 2004-06-25 |        0 | Cancelled    |
+--------------+----------+------------+----------+--------------+
4 rows in set (0.00 sec)

    /* Theta style */

select pm.description,so.order_no,so.order_date,sod.qty_disp,so.order_status from sales_order so,sales_order_details sod,product_master pm
where so.order_no = sod.order_no and sod.product_no = pm.product_no
and so.order_date like "%06%";

+--------------+----------+------------+----------+--------------+
| description  | order_no | order_date | qty_disp | order_status |
+--------------+----------+------------+----------+--------------+
| T-Shirts     | O19001   | 2004-06-12 |        4 | In Process   |
| Denim Shirts | O19001   | 2004-06-12 |        1 | In Process   |
| Pull Overs   | O19001   | 2004-06-12 |        1 | In Process   |
| T-Shirts     | O19002   | 2004-06-25 |        0 | Cancelled    |
+--------------+----------+------------+----------+--------------+

--> c.List the ProductNo and description of constantly sold products.

        /* ANSI style */

select distinct pm.description from sales_order so
inner join sales_order_details sod on so.order_no = sod.order_no
inner join product_master pm on sod.product_no = pm.product_no;

+--------------+
| description  |
+--------------+
| T-Shirts     |
| Denim Shirts |
| Pull Overs   |
| Skirts       |
| Cotton Jeans |
| Trousers     |
| Shirts       |
| Lycra Tops   |
+--------------+
8 rows in set (0.00 sec)

        /* Theta style */

select distinct pm.description from sales_order so, sales_order_details sod, product_master pm
where so.order_no = sod.order_no and sod.product_no = pm.product_no ;

+--------------+
| description  |
+--------------+
| T-Shirts     |
| Denim Shirts |
| Pull Overs   |
| Skirts       |
| Cotton Jeans |
| Trousers     |
| Shirts       |
| Lycra Tops   |
+--------------+

--> d.Find The names of clients who have purchased 'Trousers'.

        /* ANSI style */

select pm.description,cm.name as client_name from sales_order so
inner join sales_order_details sod on so.order_no = sod.order_no
inner join product_master pm on sod.product_no = pm.product_no
inner join client_master cm on so.client_no = cm.client_no
where pm.description = 'Trousers';

+-------------+---------------+
| description | client_name   |
+-------------+---------------+
| Trousers    | Chhaya Bankar |
+-------------+---------------+
1 row in set (0.00 sec)

        /* Theta style */

select pm.description,cm.name as client_name from sales_order so,sales_order_details sod,product_master pm,client_master cm
where so.order_no = sod.order_no and pm.product_no = sod.product_no and cm.client_no = so.client_no
and description = 'Trousers';

+-------------+---------------+
| description | client_name   |
+-------------+---------------+
| Trousers    | Chhaya Bankar |
+-------------+---------------+
1 row in set (0.00 sec)

--> e.List the Products and orders from customers who have orderded less than 5 units of 'Pull Overs'.

    /* ANSI style*/

select pm.description,cm.name as client_name,sod.qty_ordered from sales_order so
inner join sales_order_details sod on so.order_no = sod.order_no
inner join product_master pm on sod.product_no = pm.product_no
inner join client_master cm on so.client_no = cm.client_no
where pm.description = 'Pull Overs' and sod.qty_ordered < 5;

+-------------+---------------+-------------+
| description | client_name   | qty_ordered |
+-------------+---------------+-------------+
| Pull Overs  | Ivan Bayross  |           2 |
| Pull Overs  | Chhaya Bankar |           3 |
+-------------+---------------+-------------+
2 rows in set (0.00 sec)

    /* Theta style*/

select pm.description,cm.name as client_name,sod.qty_ordered from sales_order so,sales_order_details sod,product_master pm,client_master cm
where so.order_no = sod.order_no and pm.product_no = sod.product_no and cm.client_no = so.client_no
and description = 'Pull Overs' and sod.qty_ordered < 5;

+-------------+---------------+-------------+
| description | client_name   | qty_ordered |
+-------------+---------------+-------------+
| Pull Overs  | Ivan Bayross  |           2 |
| Pull Overs  | Chhaya Bankar |           3 |
+-------------+---------------+-------------+

--> f.Find the products and their quantities for the ordered by 'Ivan Bayross' and 'Mamta Muzumdar'.

    /* ANSI style*/

select cm.name,pm.description,sod.qty_ordered from sales_order so 
inner join sales_order_details sod on so.order_no = sod.order_no
inner join product_master pm on pm.product_no = sod.product_no
inner join client_master cm on cm.client_no = so.client_no
where cm.name in ('Ivan Bayross', 'Mamta Muzumdar');

+----------------+--------------+-------------+
| name           | description  | qty_ordered |
+----------------+--------------+-------------+
| Ivan Bayross   | T-Shirts     |           4 |
| Ivan Bayross   | Denim Shirts |           2 |
| Ivan Bayross   | Pull Overs   |           2 |
| Ivan Bayross   | Skirts       |           2 |
| Ivan Bayross   | Cotton Jeans |           1 |
| Mamta Muzumdar | T-Shirts     |          10 |
+----------------+--------------+-------------+
6 rows in set (0.00 sec)

    /* Theta style*/

select cm.name,pm.description,sod.qty_ordered from sales_order so, sales_order_details sod,product_master pm,client_master cm
where so.order_no = sod.order_no and sod.product_no = pm.product_no and so.client_no = cm.client_no
and cm.name in ('Ivan Bayross', 'Mamta Muzumdar');

+----------------+--------------+-------------+
| name           | description  | qty_ordered |
+----------------+--------------+-------------+
| Ivan Bayross   | T-Shirts     |           4 |
| Ivan Bayross   | Denim Shirts |           2 |
| Ivan Bayross   | Pull Overs   |           2 |
| Ivan Bayross   | Skirts       |           2 |
| Ivan Bayross   | Cotton Jeans |           1 |
| Mamta Muzumdar | T-Shirts     |          10 |
+----------------+--------------+-------------+
6 rows in set (0.00 sec)

--> g. Find the products and their quantities for the ordered placed by ClientNo 'C00001' and 'C00002'.

    /* ANSI Style */
select cm.name,pm.description,sod.qty_ordered from sales_order so 
inner join sales_order_details sod on so.order_no = sod.order_no
inner join product_master pm on pm.product_no = sod.product_no
inner join client_master cm on cm.client_no = so.client_no
where so.client_no in ('C00001','C00002');

+----------------+--------------+-------------+
| name           | description  | qty_ordered |
+----------------+--------------+-------------+
| Ivan Bayross   | T-Shirts     |           4 |
| Ivan Bayross   | Denim Shirts |           2 |
| Ivan Bayross   | Pull Overs   |           2 |
| Ivan Bayross   | Skirts       |           2 |
| Ivan Bayross   | Cotton Jeans |           1 |
| Mamta Muzumdar | T-Shirts     |          10 |
+----------------+--------------+-------------+
6 rows in set (0.00 sec)


    /* Theta Style */

select cm.name,pm.description,sod.qty_ordered from sales_order so, sales_order_details sod,product_master pm,client_master cm
where so.order_no = sod.order_no and sod.product_no = pm.product_no and so.client_no = cm.client_no
and cm.client_no in ('C00001','C00002'); 

+----------------+--------------+-------------+
| name           | description  | qty_ordered |
+----------------+--------------+-------------+
| Ivan Bayross   | T-Shirts     |           4 |
| Ivan Bayross   | Denim Shirts |           2 |
| Ivan Bayross   | Pull Overs   |           2 |
| Ivan Bayross   | Skirts       |           2 |
| Ivan Bayross   | Cotton Jeans |           1 |
| Mamta Muzumdar | T-Shirts     |          10 |
+----------------+--------------+-------------+
6 rows in set (0.00 sec)


3. Exercise on Sub-queries:

-- a. Find the ProductNo and description of non-moving products i.e. products not being sold.
-- b. List the customer Name, Address1, Address2, City and PinCode for the client who has placed order no 019001'.
-- c. List the client names that have placed orders before the month of May 02.
-- d. List if the product Lycra Top' has been ordered by any client and print the Client no, Name to whom it was sold.
-- e. List the names of clients who have placed orders worth Rs. 10000 or more.









