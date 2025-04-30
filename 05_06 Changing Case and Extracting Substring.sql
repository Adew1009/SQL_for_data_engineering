select upper(customer_name) from customer;
-- The upper function converts a string to uppercase "ANDREW"

select lower(customer_name) from customer;
-- The lower function converts a string to lowercase "andrew"

select initcap(customer_name) from customer;
-- The initcap function converts the first letter of each word in a string to uppercase "Andrew"

select substring('Hello from Deepak' from 1 for 5);
-- The substring function returns the first 5 characters of a string "Hello"

select substring('Hello from Deepak' from 7 for 5);
-- The substring function returns the 7th to 11th characters of a string "from D"

select left('Hello from Deepak', 5);
-- The left function returns the first 5 characters of a string "Hello" 

select right('Hello from Deepak', 6);
-- The right function returns the last 6 characters of a string "Deepak"

select position('Alice' in 'Hello from Deepak');
-- The position function returns the position of a substring in a string "0"  since the substring 'Alice' is not found

select position('from' in 'Hello from Deepak');
-- The position function returns the position of a substring in a string "7"

select length('Hello from Deepak');
-- The length function returns the length of a string "17"

select lpad('Hello', 10, '*');
-- The lpad function pads a string with a specified character to a specified length "****Hello"

