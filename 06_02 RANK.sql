select customer_id,
RANK() over (partition by customer_id order by total_amount desc) as order_rank,
total_amount
from orders

-- The RANK function returns the rank of a value in a dataset.

1	1	120.50
1	2	50.00
2	1	75.25
3	1	210.75