-- Views are a way to simplify complex queries and to improve performance by avoiding the need to recompute the result of the query.
-- Views do not store data, they store the query that creates the view.
-- Views are useful for simplifying complex queries and for improving performance by avoiding the need to recompute the result of the query.

create view customer_order_summary AS

select customer_id,
count(order_id),
sum(total_amount)
from
orders
group by customer_id

-- Create a view to summarize order data by product 


select * from customer_order_summary 

-- This selects all the data from the view 

3	1	210.75
2	1	75.25
1	2	170.50

select * from customer_order_summary where customer_id =1

-- This selects all the data from the view for customer_id 1

1	2	170.50

Standard views
-- A standard view is a virtual table that is created from the result of a query.
-- It is not stored in the database and is not a physical table.
-- It is used to simplify complex queries and to improve performance by avoiding the need to recompute the result of the query.

Materialized views
-- A materialized view is a precomputed result of a query that is stored in the database.
-- It is a physical representation of a view and is stored as a table in the database.
-- It is used to improve performance by avoiding the need to recompute the result of the query.





create view product_category_summary AS

select p.name as product, c.name from categories c INNER JOIN Products p on p.category_id = c.category_id;

-- This creates a view that summarizes the product and category data using an INNER JOIN.