select current_time;
-- The current_time function returns the current time (20:50:58.325563-05:00)

select localtime;
-- The localtime function returns the current time ("20:52:09.402998")

select current_timestamp;
-- The current_timestamp function returns the current date and time ("2025-04-29 20:52:35.329082-05")

select localtimestamp;
-- The localtimestamp function returns the current date and time ("2025-04-29 20:53:06.76059")


select extract(hour from order_timestamp) from orders;
-- The extract function returns the hour of the day (12)

select extract(minute from order_timestamp) from orders;
-- The extract function returns the minute of the hour (23)

select extract(second from order_timestamp) from orders;
-- The extract function returns the second of the minute (38)

select date_trunc('day', order_timestamp) from orders;
-- The date_trunc function returns the first day of the month (2025-04-01)

select age(order_timestamp) from orders;
-- The age function returns the age of a person ("2 years 3 mons 13 days 13:30:00")

select age(delivery_timestamp, order_timestamp) from orders;
-- The age function returns the age of a person ("1 day 20:50:00")

select current_timestamp at Time Zone 'America/New_York';
-- The current_timestamp function returns the current date and time ("2025-04-29 21:55:42.552342")

