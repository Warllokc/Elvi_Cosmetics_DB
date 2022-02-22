SHOW DATABASES;
-- CREATE DATABASE Elvi_Cosmetics;
-- DROP DATABASE elvi_costmetics;
SHOW DATABASES;
USE Elvi_Cosmetics;
SHOW TABLES;

CREATE TABLE costumer(
id INT NOT NULL auto_increment primary KEY,
name varchar(255),
sex varchar(30),
phone varchar(255),
email varchar (255));

SHOW TABLES;

DESCRIBE costumer;
select * from costumer

