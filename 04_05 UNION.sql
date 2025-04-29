select name from products where category_id =1

UNION
-- ! UNION = UNIQUE VALUES

select name from products p inner join orders o on o.product_id = p.product_id where o.total_quantity > 10

"Laptop"
"Headphones"
"Fitness Tracker"
"Ipad"

select name from products where category_id =1

UNION ALL
-- ! UNION ALL = ALL VALUES
select name from products p inner join orders o on o.product_id = p.product_id where o.total_quantity > 10

"Laptop"
"Headphones"
"Fitness Tracker"
"Ipad"
"Ipad"
