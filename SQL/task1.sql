


-- create table Manufacturers(
--     code integer,
--     name varchar(30),
--     constraint pk_Manufacturers primary key(code)
-- );


-- insert into Manufacturers values(1, 'Sony') ;
-- insert into Manufacturers values(2, 'Creative Labs');
-- insert into Manufacturers values(3, 'Hewlett-Packard') ;
-- insert into Manufacturers values(4, 'Iomega' ) ;
-- insert into Manufacturers values(5, 'Fujitsu') ;
-- insert into Manufacturers values(6, 'Winchester');


-- create table products(
--     code integer,
--     name varchar(30),
--     price real,
--     Manufacturer integer,
--     constraint pk_products primary key(code),
--     constraint fk_products foreign key(Manufacturer) references Manufacturers(code)
-- );

-- insert into products values(1, 'Hard drive',240,5) ;
-- insert into products values(2, 'Memory',120,6) ;
-- insert into products values(3, 'ZIP drive', 150,4) ;
-- insert into products values(4, 'Floppy disk',5,6) ;
-- insert into products values(5, 'Monitor',240,1) ;
-- insert into products values(6, 'DVD drive',180,2) ;
-- insert into products values(7, 'CD drive', 90,2) ;
-- insert into products values(8, 'Printer', 270,3) ;
-- insert into products values(9, 'Toner cartridge' ,66,3) ;
-- insert into products values(10, 'DVD burner', 180,2);


-- 1.1 Select the names of all the products in the store.

    ---> select name from products;
            -- +-----------------+
            -- | name            |
            -- +-----------------+
            -- | Hard drive      |
            -- | ZIP drive       |
            -- | Monitor         |
            -- | DVD drive       |
            -- | CD drive        |
            -- | Printer         |
            -- | Toner cartridge |
            -- +-----------------+

-- 1.2 Select the names and the prices of all the products in the store.

    --->select name , price from products;
            -- +-----------------+-------+
            -- | name            | price |
            -- +-----------------+-------+
            -- | Hard drive      |   240 |
            -- | ZIP drive       |   150 |
            -- | Monitor         |   240 |
            -- | DVD drive       |   180 |
            -- | CD drive        |    90 |
            -- | Printer         |   270 |
            -- | Toner cartridge |    66 |
            -- +-----------------+-------+

-- 1.3 Select the name of the products with a price less than or equal to $200.

    --->select * from products where price < 200;
            -- +------+-----------------+-------+--------------+
            -- | code | name            | price | Manufacturer |
            -- +------+-----------------+-------+--------------+
            -- |    3 | ZIP drive       |   150 |            4 |
            -- |    6 | DVD drive       |   180 |            2 |
            -- |    7 | CD drive        |    90 |            2 |
            -- |    9 | Toner cartridge |    66 |            3 |
            -- +------+-----------------+-------+--------------+

-- 1.4 Select all the products with a price between $60 and $120.

    --->select * from products where price between 60 and 120;
            -- +------+-----------------+-------+--------------+
            -- | code | name            | price | Manufacturer |
            -- +------+-----------------+-------+--------------+
            -- |    7 | CD drive        |    90 |            2 |
            -- |    9 | Toner cartridge |    66 |            3 |
            -- +------+-----------------+-------+--------------+

-- 1.5 Select the name and price in cents (i.e., the price must be multiplied by 100).

    --->select name,price*100 from products;
            -- +-----------------+-----------+
            -- | name            | price*100 |
            -- +-----------------+-----------+
            -- | Hard drive      |     24000 |
            -- | ZIP drive       |     15000 |
            -- | Monitor         |     24000 |
            -- | DVD drive       |     18000 |
            -- | CD drive        |      9000 |
            -- | Printer         |     27000 |
            -- | Toner cartridge |      6600 |
            -- +-----------------+-----------+

-- 1.6 Compute the average price of all the products.

    --->select avg(price) from products;
            -- +--------------------+
            -- | avg(price)         |
            -- +--------------------+
            -- | 176.57142857142858 |
            -- +--------------------+

-- 1.7 Compute the average price of all products with manufacturer code equal to 2.

    --->select avg(price)  from products where manufacturer = 2;
            -- +------------+
            -- | avg(price) |
            -- +------------+
            -- |        135 |
            -- +------------+

-- 1.8 Compute the number of products with a price larger than or equal to $180.

    --->select count(name) from products where price>=180;
            -- +-------------+
            -- | count(name) |
            -- +-------------+
            -- |           5 |
            -- +-------------+

-- 1.9 Select the name and price of all products with a price larger than or equal to $180,
--  and sort first by price (in descending order), and then by name (in ascending order).

    --->select * from products where price>=180 order by price desc,name;
            -- +------+------------+-------+--------------+
            -- | code | name       | price | Manufacturer |
            -- +------+------------+-------+--------------+
            -- |    8 | Printer    |   270 |            3 |
            -- |    1 | Hard drive |   240 |            5 |
            -- |    5 | Monitor    |   240 |            1 |
            -- |   10 | DVD burner |   180 |            2 |
            -- |    6 | DVD drive  |   180 |            2 |
            -- +------+------------+-------+--------------+

-- 1.10 Select all the data from the products, including all the data for each product's manufacturer.

    --->select *
    -- from Manufacturers
    -- inner join products
    -- on Manufacturers.code=products.Manufacturer;

        -- +------+-----------------+------+-----------------+-------+--------------+
        -- | code | name            | code | name            | price | Manufacturer |
        -- +------+-----------------+------+-----------------+-------+--------------+
        -- |    5 | Fujitsu         |    1 | Hard drive      |   240 |            5 |
        -- |    4 | Iomega          |    3 | ZIP drive       |   150 |            4 |
        -- |    1 | Sony            |    5 | Monitor         |   240 |            1 |
        -- |    2 | Creative Labs   |    6 | DVD drive       |   180 |            2 |
        -- |    2 | Creative Labs   |    7 | CD drive        |    90 |            2 |
        -- |    3 | Hewlett-Packard |    8 | Laser Printer   |   270 |            3 |
        -- |    3 | Hewlett-Packard |    9 | Toner cartridge |    66 |            3 |
        -- |    2 | Creative Labs   |   10 | DVD burner      |   180 |            2 |
        -- |    2 | Creative Labs   |   11 | Loudspeakers    |    70 |            2 |
        -- +------+-----------------+------+-----------------+-------+--------------+

-- 1.11 Select the product name, price, and manufacturer name of all the products.

    -- select a.name,a.price,b.name
    -- from products a,manufacturers b
    -- where a.manufacturer=b.code;

            -- +-----------------+-----------------+-------+
            -- | name            | name            | price |
            -- +-----------------+-----------------+-------+
            -- | Sony            | Monitor         |   240 |
            -- | Creative Labs   | DVD drive       |   180 |
            -- | Creative Labs   | CD drive        |    90 |
            -- | Creative Labs   | DVD burner      |   180 |
            -- | Creative Labs   | Loudspeakers    |    70 |
            -- | Hewlett-Packard | Laser Printer   |   270 |
            -- | Hewlett-Packard | Toner cartridge |    66 |
            -- | Iomega          | ZIP drive       |   150 |
            -- | Fujitsu         | Hard drive      |   240 |
            -- +-----------------+-----------------+-------+

-- 1.12 Select the average price of each manufacturer's products, showing only the manufacturer's code.
                                     
    -- select avg(a.price),a.manufacturer
    -- from products a,manufacturers b
    -- where a.manufacturer=b.code
    -- group by b.name;

        -- +--------------+--------------+
        -- | avg(a.price) | manufacturer |
        -- +--------------+--------------+
        -- |          240 |            1 |
        -- |          130 |            2 |
        -- |          168 |            3 |
        -- |          150 |            4 |
        -- |          240 |            5 |
        -- +--------------+--------------+

-- 1.13 Select the average price of each manufacturer's products, showing the manufacturer's name.

    -- select avg(a.price),b.name
    -- from products a,manufacturers b
    -- where a.manufacturer=b.code
    -- group by b.name;

        -- +--------------+-----------------+
        -- | avg(a.price) | name            |
        -- +--------------+-----------------+
        -- |          240 | Sony            |
        -- |          130 | Creative Labs   |
        -- |          168 | Hewlett-Packard |
        -- |          150 | Iomega          |
        -- |          240 | Fujitsu         |
        -- +--------------+-----------------+

-- 1.14 Select the names of manufacturer whose products have an average price larger than or equal to $150.

    --  select avg(a.price),b.name
    -- from products a,manufacturers b
    -- where a.manufacturer=b.code
    -- group by b.name
    -- having avg(a.price)>=150;

        -- +--------------+-----------------+
        -- | avg(a.price) | name            |
        -- +--------------+-----------------+
        -- |          240 | Sony            |
        -- |          168 | Hewlett-Packard |
        -- |          150 | Iomega          |
        -- |          240 | Fujitsu         |
        -- +--------------+-----------------+

-- 1.15 Select the name and price of the cheapest product.

    ---> select name,price from products order by price limit 1;
            -- +-----------------+-------+
            -- | name            | price |
            -- +-----------------+-------+
            -- | Toner cartridge |    66 |
            -- +-----------------+-------+

-- 1.16 Select the name of each manufacturer along with the name and price of its most expensive product.

--     select manufacturers.name,products.name,products.price
-- from manufacturers,products
-- where manufacturers.code=products.Manufacturer
-- group by manufacturers.name
-- having max(price)=(select max(price) from products);

        -- +-----------------+---------------+-------+
        -- | name            | name          | price |
        -- +-----------------+---------------+-------+
        -- | Hewlett-Packard | Laser Printer |   270 |
        -- +-----------------+---------------+-------+


-- 1.17 Add a new product: Loudspeakers, $70, manufacturer 2.

    --->insert into products values(11,'Loudspeakers',70,2);



-- 1.18 Update the name of product 8 to "Laser Printer".
    
    --->update products set name='Laser Printer' where code=8; 
            -- +------+-----------------+-------+--------------+
            -- | code | name            | price | Manufacturer |
            -- +------+-----------------+-------+--------------+
            -- |    1 | Hard drive      |   240 |            5 |
            -- |    3 | ZIP drive       |   150 |            4 |
            -- |    5 | Monitor         |   240 |            1 |
            -- |    6 | DVD drive       |   180 |            2 |
            -- |    7 | CD drive        |    90 |            2 |
            -- |    8 | Laser Printer   |   270 |            3 |
            -- |    9 | Toner cartridge |    66 |            3 |
            -- |   10 | DVD burner      |   180 |            2 |
            -- |   11 | Loudspeakers    |    70 |            2 |
            -- +------+-----------------+-------+--------------+

-- 1.19 Apply a 10% discount to all products.

    --->select name,price*0.10 from products;
            -- +-----------------+--------------------+
            -- | name            | price*0.10         |
            -- +-----------------+--------------------+
            -- | Hard drive      |                 24 |
            -- | ZIP drive       |                 15 |
            -- | Monitor         |                 24 |
            -- | DVD drive       |                 18 |
            -- | CD drive        |                  9 |
            -- | Laser Printer   |                 27 |
            -- | Toner cartridge | 6.6000000000000005 |
            -- | DVD burner      |                 18 |
            -- | Loudspeakers    |                  7 |
            -- +-----------------+--------------------+

-- 1.20 Apply a 10% discount to all products with a price larger than or equal to $120.

    --->select name,price*0.10 from products where price>=180;
            -- +---------------+------------+
            -- | name          | price*0.10 |
            -- +---------------+------------+
            -- | Hard drive    |         24 |
            -- | Monitor       |         24 |
            -- | DVD drive     |         18 |
            -- | Laser Printer |         27 |
            -- | DVD burner    |         18 |
            -- +---------------+------------+

-- ****************task-2************************ Date : 08-11-2022 *******************************************


    -- INNER JOIN

-- select Manufacturers.code,Manufacturers.name,products.code,products.name,products.price,products.Manufacturer
-- from Manufacturers
-- inner join products
-- on Manufacturers.code=products.Manufacturer;

-- +------+-----------------+------+-----------------+-------+--------------+
-- | code | name            | code | name            | price | Manufacturer |
-- +------+-----------------+------+-----------------+-------+--------------+
-- |    1 | Sony            |    5 | Monitor         |   240 |            1 |
-- |    2 | Creative Labs   |    6 | DVD drive       |   180 |            2 |
-- |    2 | Creative Labs   |    7 | CD drive        |    90 |            2 |
-- |    2 | Creative Labs   |   10 | DVD burner      |   180 |            2 |
-- |    2 | Creative Labs   |   11 | Loudspeakers    |    70 |            2 |
-- |    3 | Hewlett-Packard |    8 | Laser Printer   |   270 |            3 |
-- |    3 | Hewlett-Packard |    9 | Toner cartridge |    66 |            3 |
-- |    4 | Iomega          |    3 | ZIP drive       |   150 |            4 |
-- |    5 | Fujitsu         |    1 | Hard drive      |   240 |            5 |
-- +------+-----------------+------+-----------------+-------+--------------+


-- LEFT JION

-- select Manufacturers.code,Manufacturers.name,products.code,products.name,products.price,products.Manufacturer
-- from Manufacturers
-- left join products
-- on Manufacturers.code=products.Manufacturer;

-- +------+-----------------+------+-----------------+-------+--------------+
-- | code | name            | code | name            | price | Manufacturer |
-- +------+-----------------+------+-----------------+-------+--------------+
-- |    1 | Sony            |    5 | Monitor         |   240 |            1 |
-- |    2 | Creative Labs   |    6 | DVD drive       |   180 |            2 |
-- |    2 | Creative Labs   |    7 | CD drive        |    90 |            2 |
-- |    2 | Creative Labs   |   10 | DVD burner      |   180 |            2 |
-- |    2 | Creative Labs   |   11 | Loudspeakers    |    70 |            2 |
-- |    3 | Hewlett-Packard |    8 | Laser Printer   |   270 |            3 |
-- |    3 | Hewlett-Packard |    9 | Toner cartridge |    66 |            3 |
-- |    4 | Iomega          |    3 | ZIP drive       |   150 |            4 |
-- |    5 | Fujitsu         |    1 | Hard drive      |   240 |            5 |
-- +------+-----------------+------+-----------------+-------+--------------+


--RIGHT JOIN

-- select Manufacturers.code,Manufacturers.name,products.code,products.name,products.price,products.Manufacturer
-- from Manufacturers
-- right join products
-- on Manufacturers.code=products.Manufacturer;

-- +------+-----------------+------+-----------------+-------+--------------+
-- | code | name            | code | name            | price | Manufacturer |
-- +------+-----------------+------+-----------------+-------+--------------+
-- |    5 | Fujitsu         |    1 | Hard drive      |   240 |            5 |
-- |    4 | Iomega          |    3 | ZIP drive       |   150 |            4 |
-- |    1 | Sony            |    5 | Monitor         |   240 |            1 |
-- |    2 | Creative Labs   |    6 | DVD drive       |   180 |            2 |
-- |    2 | Creative Labs   |    7 | CD drive        |    90 |            2 |
-- |    3 | Hewlett-Packard |    8 | Laser Printer   |   270 |            3 |
-- |    3 | Hewlett-Packard |    9 | Toner cartridge |    66 |            3 |
-- |    2 | Creative Labs   |   10 | DVD burner      |   180 |            2 |
-- |    2 | Creative Labs   |   11 | Loudspeakers    |    70 |            2 |
-- +------+-----------------+------+-----------------+-------+--------------+

-- CROSS JOIN

-- select *
-- from Manufacturers
-- cross join products;


