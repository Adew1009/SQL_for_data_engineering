explain analyze select * from orders where order_id=1
-- This explains the query plan for the select statement.

select * from pg_stat_user_indexes where relname ='orders'
-- This shows the statistics for the orders table.

explain  select * from orders where order_id=1
-- This explains the query plan for the select statement.

