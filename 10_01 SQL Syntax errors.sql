selec * from customer
-- !Syntax error - typo

select * where city = 'City1' from customer
-- !Syntax error - order of keywords is incorrect WHERE IS BEFORE FROM
select *  from customer where city = 'City1'

select *  from customer where city = City1
-- !Syntax error - missing single qoutes for City1

--* select *  from customer where city in ('City1, ' City2'
-- !Syntax error - missing end ) for the list of cities
select *  from customer where city  in ('City1', 'City2')


select avg(customer_name) from customer
-- !Syntax error - customer_name is not an integer, but is a string

select * from orders join customer on <wrong column name>
-- !Syntax error - wrong column name