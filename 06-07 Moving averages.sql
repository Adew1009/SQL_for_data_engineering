select order_id, customer_id, order_timestamp, total_amount,

avg(total_amount) over (partition by customer_id order by order_timestamp
	rows between 1 preceding and current row) as mvg_avg
	from orders
	-- moving average of the total_amount for the customer_id, ordered by the order_timestamp
	-- 1 preceding means the previous row
	-- current row means the current row
	-- so the moving average is the average of the current row and the previous row