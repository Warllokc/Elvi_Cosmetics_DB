SHOW DATABASES;
USE Elvi_Cosmetics;
SHOW TABLES;

-- -- DELETE DUBLICATE DATA
SELECT ser_description, count(*) 
FROM services
group by ser_description
having count(*) > 1;

create table ser_description as 
select Max(id), ser_description from services
group by ser_description;

drop table services;
alter table ser_description
rename to services;

SELECT * FROM services;
