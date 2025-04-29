select count(customer_id) as Total_Row_Count from customer;
-- Will count the number of customer_id in the customer table
select count(*) as Total_Row_Count from customer;
-- Will count the number of rows in the customer table
select count( distinct customer_id) as Total_Row_Count from customer;
-- Will count the number of distinct customer_id in the customer table
select sum(total_amount) from orders;
-- Will sum the total_amount column in the orders table
select max(total_amount) from orders;
-- Will find the maximum value of the total_amount column in the orders table
select min(total_amount) from orders;
-- Will find the minimum value of the total_amount column in the orders table

select avg(total_amount) from orders;
-- Will find the average value of the total_amount column in the orders table
select stddev(total_amount) from orders;
-- Will find the standard deviation of the total_amount column in the orders table

--! Common aggregate functions
-- *Count is used to count the number of rows in a table
-- *Sum is used to sum the values of a column
-- *Max is used to find the maximum value of a column
-- *Min is used to find the minimum value of a column
-- *Avg is used to find the average value of a column
-- *Stddev is used to find the standard deviation of a column
