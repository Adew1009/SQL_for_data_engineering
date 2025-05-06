-- Stored procedures are a way to store and reuse SQL code.
-- They are useful for simplifying complex queries and for improving performance by avoiding the need to recompute the result of the query.

create procedure add_category(cat_id int, cat_name varchar)
language plpgsql

AS
$$
BEGIN
 insert into categories values (cat_id, cat_name);
END;
$$;

-- CREATE PROCEDURE
-- Query returned successfully in 48 msec.

-- plpgsql is the language used to create the stored procedure.
-- $$ is used to define the beginning and end of the stored procedure.
-- This is a stored procedure that adds a new category to the categories table.

Call add_category(6, 'Fashion')
-- This calls the stored procedure to add a new category to the categories table.   

select * from categories
-- This selects all the data from the categories table.

drop procedure add_category
-- This drops the stored procedure add_category.
