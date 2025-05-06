create role mike with login
-- This will create a new role called mike that can login.
create role tom with login password 'tom@123';
-- This will create a new role called tom that can login with the password tom@123. 
create role John with login password 'John@123' superuser
-- This will create a new role called John that can login with the password John@123 and is a superuser.    
create role John1 with login password 'John@123' createdb;
-- This will create a new role called John1 that can login with the password John@123 and can create databases.     
create role John2 with login password 'John@123' createrole
-- This will create a new role called John2 that can login with the password John@123 and can create roles. 
create role John3 with login password 'John@123' valid until '2024-05-31'
-- This will create a new role called John3 that can login with the password John@123 and will expire on 2024-05-31.    
create role John4 with login password 'John@123' connection limit 10
-- This will create a new role called John4 that can login with the password John@123 and has a connection limit of 10.     
create role John5 with login password 'John@123' in role John4
-- This will create a new role called John5 that can login with the password John@123 and will inherit the role of John4.   
create user John6 with password 'John@123'
-- This will create a new user called John6 that can login with the password John@123.

-- superuser - can login, can create databases, can create roles
-- createdb - can create databases 
-- createrole - can create roles 
