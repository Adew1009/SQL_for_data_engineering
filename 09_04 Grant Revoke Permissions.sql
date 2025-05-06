grant select on customer to john1
-- This will grant select permission on the customer table to the john1 role.
grant insert, update, delete, execute, connect, create on customer to john1
-- This will grant insert, update, delete, execute, connect and create permission on the customer table to the john1 role.
grant select on all tables in schema public to john1
-- This will grant select permission on all tables in the public schema to the john1 role.
grant select on customer to john1 with grant option
-- This will grant select permission on the customer table to the john1 role with the ability to grant select permission to other roles.
revoke select on customer from john1
-- This will revoke select permission on the customer table from the john1 role.
revoke select, insert on customer from john1
-- This will revoke select and insert permission on the customer table from the john1 role. 
revoke all on customer from john1
-- This will revoke all permissions on the customer table from the john1 role.


-- !Create Role and add permission
create role bob with login password 'bob@123'
-- This will create a new role called bob.

grant select on product to bob
-- This will grant select permission on the customer table to the bob role.

