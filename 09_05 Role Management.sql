create role sales_team
-- This will create a new role called sales_team.

create role admins
-- This will create a new role called admins.

grant select on all tables in schema public to sales_team
-- This will grant select permission on all tables in the public schema to the sales_team role.

grant all privileges on all tables in schema public to admins
-- This will grant all privileges on all tables in the public schema to the admins role.

create role sales_managers in role sales_team
-- This will create a new role called sales_managers that inherits the sales_team role.

