select * from orders where customer_id =1  order by order_timestamp desc
create index idx_cust on orders(customer_id, order_timestamp)
-- This creates an index on the customer_id and order_timestamp columns of the orders table.

select * from orders where customer_id =1  order by order_timestamp desc limit 2
-- This selects the first 2 rows from the orders table where the customer_id is 1 and orders them by the order_timestamp column in descending order.
-- *Could use this to see how a large table is arrangeed without pulling all the data.

explain analyze select * from orders where customer_id =1 
-- This explains the query plan for the select statement.
-- it will show the query plan and the time it took to execute the query.