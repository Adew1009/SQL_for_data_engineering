select customer_id, order_id, order_timestamp,
lag(order_timestamp, 1) over (partition by customer_id order by order_timestamp) as prev_order
from orders;

-- The LAG function returns the value of the previous row in a dataset.

select customer_id, order_id, order_timestamp,
lead(order_timestamp, 1) over (partition by customer_id order by order_timestamp) as next_order
from orders;

-- The LEAD function returns the value of the next row in a dataset.
