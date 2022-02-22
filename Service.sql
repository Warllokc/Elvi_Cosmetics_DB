SHOW DATABASES;
USE Elvi_Cosmetics;
SHOW TABLES;


CREATE TABLE services
(
id INT NOT NULL auto_increment primary KEY,
service_name varchar(255),
ser_description text,
price int);

DESCRIBE services;

select * from services;

