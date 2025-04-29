select city, count(*) from customer group by city having count(*)>100;
-- Will count the number of customers in each city and return only the cities with more than 100 customers
select c.name, c.category_id,  count(p.product_id)  from categories c join products p on c.category_id = p.category_id
group by c.category_id having count(p.product_id)>1;
-- Will count the number of products in each category and return only the categories with more than 1 product

--! Having is used to filter the result of the group by clause and works like the where clause but is used after the group by clause

-- The Having will come after the group by clause and will be used to filter the result of the group by clause

-- The Where will come before the group by clause and will be used to filter the result of the select statement




-- ! CHALLENGE
-- Find all the product names along with their ID numbers that belong to the category of 'Electronics'

select p.product_id, p.name from products p join categories c on p.category_id = c.category_id where c.name = 'Electronics'