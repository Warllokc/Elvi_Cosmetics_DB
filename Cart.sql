SHOW DATABASES;
USE Elvi_Cosmetics;
SHOW TABLES;

CREATE TABLE cart
(
id INT NOT NULL auto_increment primary KEY,
costumer_id int NOT NULL,
INDEX `idx_costumer_cart`(costumer_id),
constraint `fk_costumer_cart`
foreign key(costumer_id) 
references costumer(id) on update cascade on delete restrict);

DESCRIBE cart;
show tables;