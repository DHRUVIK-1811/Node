
-- -- create table client_master(
-- --    Clientno varchar(50) ,
-- --    Name varchar(50),
-- --    city varchar(50),
-- --    pincode numeric(38),
-- --    state varchar(50),
-- --    baldue numeric(38)
-- -- );
-- -- insert into client_master values('C00001', 'Ivan', 'Bombay', 400054, 'Maharashtra', 15000);
-- -- insert into client_master values('C00002', 'Vandana', 'Madras', 780001, 'Tamilnadu', 0);
-- -- insert into client_master values('C00003', 'Pramada', 'Bombay', 400057, 'Maharashtra', 5000);
-- -- insert into client_master values('C00004', 'Basu', 'Bombay', 400056, 'Maharashtra', 0);
-- -- insert into client_master values('C00005', 'Ravi', 'Delhi', 100001, '', 2000);
-- -- insert into client_master values('C00006', 'Rukmini', 'Bombay', 400050, 'Maharashtra', 0);
-- -- select * from client_master;



-- -- create table salesman_master(
-- -- salesman_no varchar(50),
-- -- salesmanname varchar(50), 
-- -- address varchar(50),
-- -- city varchar(50),
-- -- pincode numeric(38),
-- -- state varchar(50),
-- -- salamt numeric(38),
-- -- tgttoget numeric(38),
-- -- ytdsale numeric(38),
-- -- remark varchar(50)
-- -- );

-- -- insert into salesman_master values ('S00002', 'Manish', '65, nariman', 'Bombay', 400001, 'Mah', 3000, 200, 100, 'Good');
-- -- insert into salesman_master values ('S00001', 'Kiran', 'A/14 worli', 'Bombay', 400002, 'Mah', 3000, 100, 50, 'Good'); 
-- -- insert into salesman_master values ('S00003', 'Ravi', 'P-7 Bandra', 'Bombay', 400032, 'Mah', 3000, 200, 100, 'Good'); 
-- -- insert into salesman_master values ('S00004', 'Ashish', 'A/5 Juhu', 'Bombay', 400044, 'Mah', 3500, 200, 150, 'Good');

-- -- select * from salesman_master;



-- create table product_master(
-- productno varchar(50),
-- description varchar(50), 
-- profitpercent numeric(38,2), 
-- unitmeasured varchar(50), 
-- qtyonhand numeric(38), 
-- recorderlvl numeric(38), 
-- sellprice numeric(38), 
-- costprice numeric(38)
-- );

-- insert into product_master values ('P00001','1.44floppies',5, 'piece', 100, 20, 525,500); 
-- insert into product_master values ('P03453', 'Monitors', 6, 'piece', 10, 3, 12000,11200); 
-- insert into product_master values ('P06734', 'Mouse',5, 'piece', 20, 5, 1050, 500); 
-- insert into product_master values ('P07865', '1.22 floppies',5, 'piece', 100, 20, 525,500); 
-- insert into product_master values ('P87868', 'Keyboards',2, 'piece',10,3,3150, 3050); 
-- insert into product_master values ('P87885', 'CD Drive', 2.50, 'piece',10,3,5250,5100); 
-- insert into product_master values ('P07965', '540 HDD',4, 'piece',10,3,8400, 8000); 
-- insert into product_master values ('P87975', '1.44 Drive',5, 'piece', 10, 3, 1050, 1000); 
-- insert into product_master values ('P88865', '1.22 Drive',5, 'piece',2,3,1050, 1000); 
-- select * from product_master;



-- ******************************************** Date : 11-10-2022 *******************************************

-- 3)
-- select Name from client_master;
-- select * from client_master;
-- select Name,city,state from client_master;
-- select description from product_master;
-- select * from client_master where city='bombay';
-- select * from salesman_master where salamt=3000;


-- 4)
-- update client_master set city='Bangalore' where Clientno='C00005';
-- update client_master set baldue=1000 where Clientno='C00001';

-- update salesman_master set city='Pune';



-- ******************************************** Date : 12-10-2022 *******************************************

-- create table stud_master(
--     r_no int ,
--     s_name varchar(50),
--     s_email varchar(50),
--     constraint pk_stud primary key(r_no,s_name,s_email)
-- );

-- insert into stud_master values (101,'dhruvik','dhruvik@gmail.com'); 
-- insert into stud_master values (102,'jinal','jinal@gmail.com');
-- insert into stud_master values (103,'krupali','krupali@gmail.com');
-- insert into stud_master values (104,'kaushik','kaushik@gmail.com');


-- ******************************************** Date : 13-10-2022 *******************************************

-- create table client_master(
--    Clientno varchar(50) ,
--    Name varchar(50),
--    city varchar(50),
--    pincode numeric(38),
--    state varchar(50),
--    baldue numeric(38),
--    constraint pk_clients primary key(Clientno)
-- );

-- insert into client_master values('C00001', 'Ivan', 'Surat', 400054, 'Gujrat', 5000);
-- insert into client_master values('C00002', 'Vandana', 'Madras', 780001, 'Tamilnadu', 0);
-- insert into client_master values('C00003', 'Pramada', 'Bombay', 400057, 'Maharashtra', 5000);
-- insert into client_master values('C00004', 'Basu', 'Bombay', 400056, 'Maharashtra', 0);
-- insert into client_master values('C00005', 'Ravi', 'Delhi', 100001, '', 2000);
-- insert into client_master values('C00006', 'Rukmini', 'Bombay', 400050, 'Maharashtra', 0);
-- select * from client_master;


-- create table product_master(
-- productno varchar(50),
-- description varchar(50), 
-- profitpercent numeric(38,2), 
-- unitmeasured varchar(50), 
-- qtyonhand numeric(38), 
-- recorderlvl numeric(38), 
-- sellprice numeric(38), 
-- costprice numeric(38),
-- constraint pk_product primary key(productno)
-- );

-- insert into product_master values ('P00001','1.44floppies',5, 'piece', 100, 20, 525,500); 
-- insert into product_master values ('P03453', 'Monitors', 6, 'piece', 10, 3, 12000,11200); 
-- insert into product_master values ('P06734', 'Mouse',5, 'piece', 20, 5, 1050, 500); 
-- insert into product_master values ('P07865', '1.22 floppies',5, 'piece', 100, 20, 525,500); 
-- insert into product_master values ('P87868', 'Keyboards',2, 'piece',10,3,3150, 3050); 
-- insert into product_master values ('P87885', 'CD Drive', 2.50, 'piece',10,3,5250,5100); 
-- insert into product_master values ('P07965', '540 HDD',4, 'piece',10,3,8400, 8000); 
-- insert into product_master values ('P87975', '1.44 Drive',5, 'piece', 10, 3, 1050, 1000); 
-- insert into product_master values ('P88865', '1.22 Drive',5, 'piece',2,3,1050, 1000); 
-- select * from product_master;


-- create table salesman_master(
-- salesman_no varchar(50),
-- salesmanname varchar(50), 
-- address varchar(50),
-- city varchar(50),
-- pincode numeric(38),
-- state varchar(50),
-- salamt numeric(38),
-- tgttoget numeric(38),
-- ytdsale numeric(38),
-- remark varchar(50),
-- constraint pk_salesman primary key(salesman_no)
-- );

-- insert into salesman_master values ('S00002', 'Manish', '65, nariman', 'Bombay', 400001, 'Mah', 3000, 200, 100, 'Good');
-- insert into salesman_master values ('S00001', 'Kiran', 'A/14 worli', 'Bombay', 400002, 'Mah', 3000, 100, 50, 'Good'); 
-- insert into salesman_master values ('S00003', 'Ravi', 'P-7 Bandra', 'Bombay', 400032, 'Mah', 3000, 200, 100, 'Good'); 
-- insert into salesman_master values ('S00004', 'Ashish', 'A/5 Juhu', 'Bombay', 400044, 'Mah', 3500, 200, 150, 'Good');
-- select * from salesman_master;



-- create table sales_order(
--     orderno varchar(6) primary key,
--     Clientno varchar(50) ,
--     orderdate date,
--     delyaddr varchar(25),
--     salesman_no varchar(50),
--     delytype char(1),
--     billyn char(1),
--     delydate date,
--     orderstatus varchar(10),
--     constraint fk_salodr1 foreign key(Clientno) references client_master(Clientno),
--     constraint fk_salodr2 foreign key(salesman_no) references salesman_master(salesman_no)
-- );  

-- insert into sales_order values('O19001','C00001','2004-06-12','Surat','S00001','F','N','2002-07-20','In Process');
-- insert into sales_order values('O19002','C00002','2004-06-25','Madras','S00002','P','N','2002-06-27','Cancelled');
-- insert into sales_order values('O46865','C00003','2004-02-18','Bombay','S00003','F','Y','2002-01-20','Fulfilled');
-- insert into sales_order values('O19003','C00001','2004-04-03','Bombay','S00001','F','Y','2002-04-07','Fulfilled');
-- insert into sales_order values('O46866','C00004','2004-05-20','Bombay','S00002','P','N','2002-05-22','Cancelled');
-- insert into sales_order values('O19008','C00005','2004-05-24','Delhi','S00004','F','N','2002-07-26','In Process');
-- select * from sales_order;


-- create table sales_order_details(
--    orderno varchar(10),
--    productno varchar(50),
--    qtyordered numeric(8),
--    qtydisp numeric(8),
--    productrate numeric(10,2),
--    constraint fk_salodrdet1 foreign key(orderno) references sales_order(orderno),
--    constraint fk_salodrdet2 foreign key(productno) references product_master(productno)
-- );

-- insert into sales_order_details values('O19001','P00001',4,4,525);
-- insert into sales_order_details values('O19001','P07965',2,1,8400);
-- insert into sales_order_details values('O19001','P07865',2,1,5250);
-- insert into sales_order_details values('O19002','P00001',10,0,525);
-- insert into sales_order_details values('O46865','P07868',3,3,3150);
-- insert into sales_order_details values('O46865','P07865',3,1,5250);
-- insert into sales_order_details values('O46865','P00001',10,10,525);
-- insert into sales_order_details values('O46865','P03453',4,4,1050);
-- insert into sales_order_details values('O19003','P03453',2,2,1050);
-- insert into sales_order_details values('O19003','P06734',1,1,12000);
-- insert into sales_order_details values('O46866','P07965',1,0,8400);
-- insert into sales_order_details values('O46866','P07975',1,0,1050);
-- insert into sales_order_details values('O19008','P00001',10,5,525);
-- insert into sales_order_details values('O19008','P07975',5,3,1050);
-- select * from sales_order_details;



-- ******************************************** Date : 14-10-2022 *******************************************

-->Order By
    -- by default assending.


    -- select * from sales_order_details order by productrate;
 
    -- select * from sales_order_details order by productrate desc;


--> Distinct
    -- no repeat data in coluumn.

    -- select distinct orderno from sales_order_details;

    --select distinct orderno,productno from sales_order_details;



--> Limit 

    -- select * from sales_order_details limit 5;



--> In

    -- select * from sales_order_details where qtydisp in (4);


--> Not In 

     -- select * from sales_order_details where qtydisp not in (4);


--> Like

    --last charater to starting:

        -- select * from client_master where name like '%a';

    
    --First charater to starting:

        -- select * from client_master where name like 'r%';

    
    --last second charater to starting:

        -- select * from client_master where name like '%n_';


    --second charater to starting:

        -- select * from client_master where name like '_a%';

    
    --middle charater:

        -- select * from client_master where name like '%a%';


    --string size:

         -- select * from client_master where name like '____';



-- ******************************************** Date : 17-10-2022 *******************************************





-- ******************************************** Date : 18-10-2022 *******************************************

-- 1. list the names of all clients having 'a' as the second letter in their names.

        -->select * from client_master where name like '_a%';

-- +----------+---------+--------+---------+-------------+--------+
-- | Clientno | Name    | city   | pincode | state       | baldue |
-- +----------+---------+--------+---------+-------------+--------+
-- | C00002   | Vandana | Madras |  780001 | Tamilnadu   |      0 |
-- | C00004   | Basu    | Bombay |  400056 | Maharashtra |      0 |
-- | C00005   | Ravi    | Delhi  |  100001 |             |   2000 |
-- +----------+---------+--------+---------+-------------+--------+



-- 2. List the clients who stay in a city whose First letter is 'M'.

        -->select * from client_master where city like 'm%';

-- +----------+---------+--------+---------+-----------+--------+
-- | Clientno | Name    | city   | pincode | state     | baldue |
-- +----------+---------+--------+---------+-----------+--------+
-- | C00002   | Vandana | Madras |  780001 | Tamilnadu |      0 |
-- +----------+---------+--------+---------+-----------+--------+


-- 3. List all clients who stay in 'Gujrat' or 'Tamilnadu'.

        -->select * from client_master where state ='Gujrat' or state='Tamilnadu';

-- +----------+---------+--------+---------+-----------+--------+
-- | Clientno | Name    | city   | pincode | state     | baldue |
-- +----------+---------+--------+---------+-----------+--------+
-- | C00001   | Ivan    | Surat  |  400054 | Gujrat    |   5000 |
-- | C00002   | Vandana | Madras |  780001 | Tamilnadu |      0 |
-- +----------+---------+--------+---------+-----------+--------+


-- 4. List all clients whose BalDue is greater than value 10000.

        -->select * from client_master where baldue>10000;




-- 5. List all information from the Sales_Order table for orders placed in the month of june.

        -->select * from Sales_Order where month(delydate)=6;

-- +---------+----------+------------+----------+-------------+----------+--------+------------+-------------+
-- | orderno | Clientno | orderdate  | delyaddr | salesman_no | delytype | billyn | delydate   | orderstatus |
-- +---------+----------+------------+----------+-------------+----------+--------+------------+-------------+
-- | O19002  | C00002   | 2004-06-25 | Madras   | S00002      | P        | N      | 2002-06-27 | Cancelled   |
-- +---------+----------+------------+----------+-------------+----------+--------+------------+-------------+


-- 6. List the order information for ClientNo 'C00001' and 'C00002'.

        -->select * from Sales_Order where Clientno in ('C00001','C00002');

-- +---------+----------+------------+----------+-------------+----------+--------+------------+-------------+
-- | orderno | Clientno | orderdate  | delyaddr | salesman_no | delytype | billyn | delydate   | orderstatus |
-- +---------+----------+------------+----------+-------------+----------+--------+------------+-------------+
-- | O19001  | C00001   | 2004-06-12 | Surat    | S00001      | F        | N      | 2002-07-20 | In Process  |
-- | O19003  | C00001   | 2004-04-03 | Bombay   | S00001      | F        | Y      | 2002-04-07 | Fulfilled   |
-- | O19002  | C00002   | 2004-06-25 | Madras   | S00002      | P        | N      | 2002-06-27 | Cancelled   |
-- +---------+----------+------------+----------+-------------+----------+--------+------------+-------------+


-- 7. List roducts whose selling price is greater than 500 and less than or equa to 750.

        --select * from product_master where sellprice>500 and sellprice<=750;

-- +-----------+---------------+---------------+--------------+-----------+-------------+-----------+-----------+
-- | productno | description   | profitpercent | unitmeasured | qtyonhand | recorderlvl | sellprice | costprice |
-- +-----------+---------------+---------------+--------------+-----------+-------------+-----------+-----------+
-- | P00001    | 1.44floppies  |          5.00 | piece        |       100 |          20 |       525 |       500 |
-- | P07865    | 1.22 floppies |          5.00 | piece        |       100 |          20 |       525 |       500 |
-- +-----------+---------------+---------------+--------------+-----------+-------------+-----------+-----------+


-- 8. List roducts whose selling price is more than 500.Calculate a new selling price as, original selling price*.15.
--    Rename the new column in the output of the above query as new_price.

        -->alter table product_master add column new_sellprice numeric(38);

        -->update  product_master set new_sellprice=(sellprice*0.15)+sellprice where sellprice>500;

-- +-----------+---------------+---------------+--------------+-----------+-------------+-----------+-----------+---------------+
-- | productno | description   | profitpercent | unitmeasured | qtyonhand | recorderlvl | sellprice | costprice | new_sellprice |
-- +-----------+---------------+---------------+--------------+-----------+-------------+-----------+-----------+---------------+
-- | P00001    | 1.44floppies  |          5.00 | piece        |       100 |          20 |       525 |       500 |           604 |
-- | P03453    | Monitors      |          6.00 | piece        |        10 |           3 |     12000 |     11200 |         13800 |
-- | P06734    | Mouse         |          5.00 | piece        |        20 |           5 |      1050 |       500 |          1208 |
-- | P07865    | 1.22 floppies |          5.00 | piece        |       100 |          20 |       525 |       500 |           604 |
-- | P07965    | 540 HDD       |          4.00 | piece        |        10 |           3 |      8400 |      8000 |          9660 |
-- | P87868    | Keyboards     |          2.00 | piece        |        10 |           3 |      3150 |      3050 |          3623 |
-- | P87885    | CD Drive      |          2.50 | piece        |        10 |           3 |      5250 |      5100 |          6038 |
-- | P87975    | 1.44 Drive    |          5.00 | piece        |        10 |           3 |      1050 |      1000 |          1208 |
-- | P88865    | 1.22 Drive    |          5.00 | piece        |         2 |           3 |      1050 |      1000 |          1208 |
-- +-----------+---------------+---------------+--------------+-----------+-------------+-----------+-----------+---------------+


-- 9.List the names, city and state of clients who are not in the state of 'Maharashtra'.

        -->select * from client_master where state not in ('Maharashtra');

-- +----------+---------+--------+---------+-----------+--------+
-- | Clientno | Name    | city   | pincode | state     | baldue |
-- +----------+---------+--------+---------+-----------+--------+
-- | C00001   | Ivan    | Surat  |  400054 | Gujrat    |   5000 |
-- | C00002   | Vandana | Madras |  780001 | Tamilnadu |      0 |
-- | C00005   | Ravi    | Delhi  |  100001 |           |   2000 |
-- +----------+---------+--------+---------+-----------+--------+

-- 10. Count the total number of orders.

        -->select count(orderno) from Sales_Order;

-- +----------------+
-- | count(orderno) |
-- +----------------+
-- |              6 |
-- +----------------+

-- 11. Calculate the average price of all the products.

        -->




-- ******************************************** Date : 20-10-2022 *******************************************

-- select date_format(from_days(datediff(now(),'2003-09-06')),"%y %m %d"),dayname('2003-09-06');