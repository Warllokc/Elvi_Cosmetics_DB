SHOW DATABASES;
USE Elvi_Cosmetics;
SHOW TABLES;


CREATE TABLE costumer_data
(
id INT NOT NULL auto_increment primary KEY,
chemical_peal BOOLEAN,
face_waxing BOOLEAN,
chemoteapy BOOLEAN,
accute_mdication BOOLEAN,
notes varchar(255),
INDEX `idx_costumer_notes`(notes),
constraint `fk_costumer_pers_data`
foreign key(notes) 
references costumer_session_notes(session_notes) on update cascade on delete restrict,

costumer_id int not null,
INDEX `idx_costumer`(costumer_id),
constraint `fk_costumer_data`
foreign key(costumer_id) 
references costumer(id) on update cascade on delete restrict);


DESCRIBE costumer_data;
select * from costumer_data;
