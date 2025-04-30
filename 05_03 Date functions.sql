select current_date;
-- The current_date function returns the current date (2025-04-29)

select extract(Day from current_date);
-- The extract function returns the day of the month (29)

select extract(Month from current_date);
-- The extract function returns the month of the year (4)

select extract(Year from current_date);
-- The extract function returns the year (2025)

select date_part('day', current_date);
-- The date_part function returns the day of the month (29)

select date_part('month', current_date);
-- The date_part function returns the month of the year (4)

select date_part('year', current_date);
-- The date_part function returns the year (2025)

select date_trunc('month', current_date);
-- The date_trunc function returns the first day of the month (2025-04-01) go back to the start of the month

select date_trunc('year', current_date);
-- The date_trunc function returns the first day of the year (2025-01-01) go back to the start of the year

select age(timestamp '2024-01-01');
-- The age function returns the age of a person (1 year 3 mons 28 days)

select age( timestamp '2024-01-01', timestamp '2024-01-31');
-- The age function returns the age of a person (1 year)

select to_date('01/01/2024', 'DD/MM/YYYY');
-- The to_date function returns the date (2024-01-01)

select to_char(current_date, 'DD-MM-YYYY');
-- The to_char function returns the date (29-04-2025)




