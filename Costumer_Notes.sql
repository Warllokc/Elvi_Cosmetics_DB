SHOW DATABASES;
USE Elvi_Cosmetics;
SHOW TABLES;

CREATE TABLE costumer_session_notes
(
id INT NOT NULL auto_increment primary KEY,
session_notes varchar(255) unique,
costumer_id int NOT NULL,
INDEX `idx_costumer`(costumer_id),
constraint `fk_costumer_notes`
foreign key(costumer_id) 
references costumer(id) on update cascade on delete restrict);

DESCRIBE costumer_session_notes;

select * from costumer_session_notes;