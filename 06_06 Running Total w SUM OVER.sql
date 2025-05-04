select customer_id, order_id, total_amount, ordeR_timestamp,

sum(total_amount) over(partition by customer_id order by order_timestamp) as running_total

from orders;
-- the sum of the total_amount for the customer_id, ordered by the order_timestamp


select product_id, order_timestamp,total_quantity,

sum(total_quantity) over(partition by product_id order by order_timestamp) as running_qty

from orders;
-- the sum of the total_quantity for the product_id, ordered by the order_timestamp