select * from products order by product_id

select * from products where product_id =7;
--! CONFIRM THE WHERE STATEMENT IS CORRECT PRIOR TO UPDATING
update products set price=500 where product_id =7;;

update products set price =700, category_id =2 where product_id =7;

update products set product_id =7 where product_id =9;

INSERT INTO Products (name, price, description, tags, category_id,Supplier)
VALUES
    ('Ipad', 100, 'High-performance ipad for professionals', 'electronics, portable, tech', 1, 'SupplierA')