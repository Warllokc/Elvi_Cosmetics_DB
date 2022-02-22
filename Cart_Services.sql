SHOW DATABASES;
USE Elvi_Cosmetics;
SHOW TABLES;

CREATE TABLE cart_service
(
id INT NOT NULL auto_increment primary KEY,
cart_id int not null,
INDEX `idx_service_cart`(cart_id),
constraint `fk_service_cart`
foreign key(cart_id) 
references cart(id) on update cascade on delete restrict,

service_id int not null,
INDEX `idx_service_id`(service_id),
constraint `fk_service_id`
foreign key(service_id) 
references services(id) on update cascade on delete restrict);



DESCRIBE cart_service;
