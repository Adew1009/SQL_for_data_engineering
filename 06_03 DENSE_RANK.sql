select customer_id,
DENSE_RANK() over (partition by customer_id order by total_amount desc) as order_rank,
total_amount
from orders

-- The DENSE_RANK function returns the rank of a value in a dataset. This is similar to the RANK function, but it does not skip any ranks.