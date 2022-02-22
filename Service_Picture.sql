SHOW DATABASES;
USE Elvi_Cosmetics;
SHOW TABLES;


-- drop table services_pic;
CREATE TABLE services_pic
(
id INT NOT NULL auto_increment primary KEY,
url varchar(255),

service_id int not null,
INDEX `idx_service`(service_id),
constraint `fk_services`
foreign key(service_id)
references services(id) on update cascade on delete restrict);


DESCRIBE services_pic;
select * from services_pic;
