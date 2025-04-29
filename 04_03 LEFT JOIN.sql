select customer_name, total_amount from customer c left join orders o on c.customer_id = o.customer_id;
-- "Alice Johnson"	120.50
-- "Bob Smith"	75.25
-- "Charlie Brown"	210.75
-- "Alice Johnson"	50.00
-- "Eva Black"	
-- "Frank Green"	
-- "David White"	


select name, total_quantity from orders o left join products p on p.product_id = o.product_id;
