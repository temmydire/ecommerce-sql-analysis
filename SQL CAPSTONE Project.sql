CREATE DATABASE`ecommerce_db`;
USE `ecommerce_db`;

CREATE TABLE customers(
customer_id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
gender VARCHAR(10),
city VARCHAR(50),
country VARCHAR(50)
);

INSERT INTO customers
(first_name,last_name,gender,city,country)
VALUES
('John','Smith','Male','Lagos','Nigeria'),
('Sarah','Johnson','Female','Abuja','Nigeria'),
('David','Brown','Male','Ibadan','Nigeria'),
('Grace','Williams','Female','Lagos','Nigeria'),
('Michael','Davis','Male','Port Harcourt','Nigeria'),
('Emily','Wilson','Female','Abuja','Nigeria'),
('Daniel','Moore','Male','Ibadan','Nigeria'),
('Sophia','Taylor','Female','Lagos','Nigeria'),
('James','Anderson','Male','Enugu','Nigeria'),
('Olivia','Thomas','Female','Abuja','Nigeria'),
('Benjamin','Jackson','Male','Lagos','Nigeria'),
('Chloe','White','Female','Ibadan','Nigeria'),
('Samuel','Harris','Male','Kano','Nigeria'),
('Amelia','Martin','Female','Lagos','Nigeria'),
('Henry','Thompson','Male','Abuja','Nigeria'),
('Isabella','Garcia','Female','Enugu','Nigeria'),
('Alexander','Martinez','Male','Ibadan','Nigeria'),
('Mia','Robinson','Female','Lagos','Nigeria'),
('William','Clark','Male','Kano','Nigeria'),
('Charlotte','Lewis','Female','Abuja','Nigeria');


CREATE TABLE products(
product_id INT PRIMARY KEY AUTO_INCREMENT,
product_name VARCHAR(100) NOT NULL,
category VARCHAR(50),
price DECIMAL(10,2),
stock_quantity INT
);

INSERT INTO products
(product_name,category,price,stock_quantity)
VALUES
('Laptop','Electronics',450000,15),
('Smartphone','Electronics',280000,25),
('Tablet','Electronics',180000,20),
('Office Chair','Furniture',120000,30),
('Office Desk','Furniture',250000,12),
('Headphones','Accessories',75000,40),
('Keyboard','Accessories',45000,50),
('Monitor','Electronics',220000,18),
('Printer','Electronics',195000,10),
('Mouse','Accessories',30000,60),
('Bookshelf','Furniture',150000,14),
('Webcam','Electronics',85000,35),
('USB Hub','Accessories',25000,70),
('External Drive','Electronics',110000,22),
('Standing Desk','Furniture',320000,8);


CREATE TABLE orders(
order_id INT PRIMARY KEY,
customer_id INT,
order_date DATE,
status VARCHAR(20),
FOREIGN KEY(customer_id) 
REFERENCES customers(customer_id)
);

INSERT INTO orders
(order_id,customer_id,order_date,status)
VALUES
(1001,1,'2026-01-05','Completed'),
(1002,2,'2026-01-07','Completed'),
(1003,3,'2026-01-10','Pending'),
(1004,4,'2026-01-12','Completed'),
(1005,5,'2026-01-15','Cancelled'),
(1006,6,'2026-01-18','Completed'),
(1007,7,'2026-01-20','Completed'),
(1008,8,'2026-01-22','Pending'),
(1009,9,'2026-01-25','Completed'),
(1010,10,'2026-01-27','Completed'),
(1011,1,'2026-02-02','Completed'),
(1012,2,'2026-02-04','Cancelled'),
(1013,11,'2026-02-06','Completed'),
(1014,12,'2026-02-08','Completed'),
(1015,13,'2026-02-10','Pending'),
(1016,14,'2026-02-12','Completed'),
(1017,15,'2026-02-15','Completed'),
(1018,16,'2026-02-18','Cancelled'),
(1019,17,'2026-02-20','Completed'),
(1020,18,'2026-02-22','Completed'),
(1021,19,'2026-03-01','Completed'),
(1022,20,'2026-03-03','Pending'),
(1023,3,'2026-03-05','Completed'),
(1024,4,'2026-03-07','Completed'),
(1025,5,'2026-03-10','Cancelled');

CREATE TABLE order_details(
order_id INT,
product_id INT,
quantity INT,
PRIMARY KEY (order_id, product_id),
FOREIGN KEY(order_id)
REFERENCES orders(order_id),
FOREIGN KEY(product_id)
REFERENCES products(product_id)
);

INSERT INTO order_details
(order_id, product_id, quantity)
VALUES
(1001, 1, 1),
(1001, 6, 2),
(1002, 2, 1),
(1002, 10, 2),
(1003, 3, 1),
(1004, 5, 1),
(1004, 7, 2),
(1005, 8, 1),
(1006, 4, 2),
(1007, 9, 1),
(1007, 13, 3),
(1008, 12, 2),
(1009, 1, 1),
(1009, 7, 1),
(1010, 15, 1),
(1011, 2, 2),
(1011, 6, 1),
(1012, 10, 4),
(1013, 5, 1),
(1014, 3, 2),
(1015, 14, 1),
(1016, 4, 1),
(1017, 1, 2),
(1018, 8, 1),
(1019, 2, 1),
(1020, 11, 2),
(1021, 15, 1),
(1022, 12, 1),
(1023, 9, 2),
(1024, 5, 1),
(1025, 6, 3);

CREATE TABLE employees(
employee_id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
department VARCHAR(50),
salary DECIMAL(10,2)
);


INSERT INTO employees
(first_name,last_name,department,salary)
VALUES
('Michael','Adams','Sales',250000),
('Grace','Williams','Customer Service',220000),
('Daniel','Brown','Sales',280000),
('Jessica','Miller','Marketing',300000),
('Robert','Wilson','IT',350000),
('Linda','Moore','Human Resources',270000),
('Thomas','Taylor','Sales',240000),
('Susan','Anderson','IT',380000),
('Charles','Thomas','Finance',400000),
('Karen','Jackson','Marketing',290000);

select first_name,last_name,city
from customers;

select count(*)
from customers;

select city,count(city)
from customers
group by city;


 SELECT first_name, last_name, concat(first_name,' ', last_name) as full_name
 FROM customers;
 
select city,count(city)
from customers
group by city
having count(city) > 3;

select product_name, category
from products
where category = 'Electronics';


select product_name,price
from products
where price = (
select  max(price)
from products);

select  avg(price)
from products;
 
select category, count(*)
from products
group by category;



SELECT category, AVG(price)
FROM products
GROUP BY category
HAVING AVG(price) > 100000;

select count(order_id)
from orders;

select count(order_id), status
from orders
group by status;


select order_id, status
from orders
where status ="completed";

select customer_id, count(order_id)
from orders
group by customer_id;

select customer_id, count(order_id)
from orders
group by customer_id
having count(order_id) > 1;

select cus.customer_id, cus.first_name, cus.last_name, ord.order_id ,ord.order_date, ord.status
from customers cus
inner join orders ord
on cus.customer_id = ord.customer_id;

select cus.customer_id, cus.first_name, cus.last_name, ord.order_id ,ord.order_date, ord.status
from customers cus
inner join orders ord
on cus.customer_id = ord.customer_id
where ord.status= "completed";

select cus.customer_id, cus.first_name, cus.last_name, ord.order_id ,ord.order_date, ord.status
from customers cus
left join orders ord
on cus.customer_id = ord.customer_id;

select cus.customer_id, cus.first_name, cus.last_name, ord.order_id ,ord.status
from customers cus
left join orders ord
on cus.customer_id = ord.customer_id
where ord.order_id = 0;

select concat(cus.first_name," ",cus.last_name) as customer_name, ord.order_id ,ord.order_date, ord.status
from customers cus
right join orders ord
on cus.customer_id = ord.customer_id;


select *
from order_details;

select sum(quantity)
from order_details;

select avg(quantity)
from order_details;

select product_id, sum(quantity)
from order_details
group by product_id;

select product_id, sum(quantity)
from order_details
group by product_id
having sum(quantity)>3;

select product_name, price,
CASE
when price < 100000 then "Low Price"
when price between 100000 and 250000 then "Medium Price"
when price > 250000 then "High Price"
end as price_category
from products;


SELECT
    CASE
        WHEN price < 100000 THEN 'Low Price'
        WHEN price BETWEEN 100000 AND 250000 THEN 'Medium Price'
        WHEN price > 250000 THEN 'High Price'
    END AS price_category,
    COUNT(*) AS total_products
FROM products
GROUP BY price_category;

SELECT  product_name,product_id,
    CASE
        WHEN price < 100000 THEN 'Low Price'
        WHEN price BETWEEN 100000 AND 250000 THEN 'Medium Price'
        WHEN price > 250000 THEN 'High Price'
    END AS price_category
FROM products
WHERE  price > 250000;

select first_name, last_name,salary,
case
when salary < 250000 then "Low"
when salary between 250000 and 350000 then "Medium"
when salary > 350000 then "High"
end as salary_category
from employees;

select 
case
when salary < 250000 then "Low"
when salary between 250000 and 350000 then "Medium"
when salary > 350000 then "High"
end as salary_category, count(*) as total_numbers_of_salary
from employees
group by salary_category;

select count(*)
from employees;

select department, count(employee_id)
from employees
group by department;

select department, avg(salary)
from employees
group by department;

select first_name, last_name, salary, department
from employees
order by salary desc
limit 5 ;

select department, avg(salary)
from employees
group by department
having avg(salary) > 250000;

select product_id, product_name,price
from products
where price > (
select avg(price)
from products);

select product_id, product_name,price
from products
where price < (
select avg(price)
from products);

select employee_id, first_name,last_name, salary
from employees
where salary > (
select avg(salary)
from employees);

select employee_id, first_name,last_name, salary
from employees
where salary = (
select max(salary)
from employees);

select product_id, product_name,price
from products
where price =(
select max(price)
from products);

SELECT first_name, last_name
 FROM customers
 UNION
 SELECT first_name, last_name
 FROM employees;
 
 SELECT first_name, last_name
 FROM customers
 UNION ALL
 SELECT first_name, last_name
 FROM employees;
 
  -- UNION HAS 29 ROWS AND UNION ALL HAS 30 ROWS-- 
  -- UNION REMOVED THE DUPLICATE ROW WHILE UNION ALL KEPT THE DUPLICATE ROW-- 
  
  SELECT first_name, last_name, "customers" as role
 FROM customers
 UNION ALL
 SELECT first_name, last_name, "employee" as role
 FROM employees;
 
 

 select city, count(city)
 from customers
 group by city;
 

 select category, avg(price)
 from products
 group by category;
 
 
SELECT status,COUNT(*) AS total_orders , COUNT(*) * 100.0 / (SELECT COUNT(*) FROM orders) as percentage_of_orders
FROM orders
GROUP BY status;

 

 
 