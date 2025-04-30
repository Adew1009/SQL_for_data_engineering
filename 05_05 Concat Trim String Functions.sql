select city || '----'|| address from customer;
-- The || operator concatenates two strings  "Townsville----456 Oak Ave"

select concat(city, address) from customer;
-- The concat function concatenates two strings "Townsville456 Oak Ave"

select concat_ws('--', city, address) from customer;
-- The concat_ws function concatenates two strings with a separator "Townsville--456 Oak Ave"

select trim('    helllo     ');
-- The trim function removes leading and trailing whitespace from a string "helllo"

select trim('X' from 'XXXHelloXXX');
-- The trim function removes leading and trailing 'X' from a string "Hello"

select ltrim('   hello   ');
-- The ltrim function removes leading whitespace from a string "hello   "

select btrim('   hello   ');
-- The btrim function removes trailing whitespace from a string "   hello"

