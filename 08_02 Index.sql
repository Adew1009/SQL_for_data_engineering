create index idx_customer_email on customer(email);
-- This creates an index on the email column of the customer table.

create index idx_prod_cat on products(category_id)
-- This creates an index on the category_id column of the products table.

create unique index idx_prod_name on products(name)
-- This creates a unique index on the name column of the products table.      

create index idx_cust_order on orders(customer_id, order_timestamp)
-- This creates a composite index on the customer_id and order_timestamp columns of the orders table.