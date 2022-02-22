SHOW DATABASES;
USE Elvi_Cosmetics;
SHOW TABLES;

 -- adding COSTUMER
INSERT INTO costumer(name,sex,phone,email)
VALUES('Alex Griffin','Male',2244003000,'alex_G@gmail.com'),
	  ('Grace Anderson','Female',4343234534, 'grace_anderson@yahoo.com'),
      ('Markenzi Red','Female',4342235676, 'mred@gmail.com');
SELECT * FROM costumer;


 -- adding COSTUMER SESSION NOTES
INSERT INTO costumer_session_notes(session_notes, costumer_id)
VALUES('Alex Griffin - have very dry skin', 1),
	  ('Grace Anderson - have oil skin', 2),
      ('Markenzi Red - breakouts extrations',3);
SELECT * FROM costumer_session_notes;


 -- adding COSTUMER DATA
INSERT INTO costumer_data(chemical_peal,face_waxing,chemoteapy,accute_mdication,notes,costumer_id)
VALUES(true,false,false,false,'Alex Griffin - have very dry skin',1),
	  (true,false,false,true,'Grace Anderson - have oil skin',2),
      (true,true,false,true,'Markenzi Red - breakouts extrations',3);
SELECT * FROM costumer_data;


-- adding SERVICES
INSERT INTO services(service_name, ser_description, price)
VALUES('Face Massage','Facial massages are treatments you can do with a practitioner or on your own',100),
	  ('Cosmtized Facials','Your Customized Facial starts with a cleanse/steam treatment, skin analysis, customized exfoliation mask, 
      and extractions (as needed)',150),
      ('Sugaring','Similar to waxing, sugaring removes body hair by quickly pulling the hair from the root.',150),
      ('Waxing','Waxing is the process of hair removal from the root by using a covering of a sticky substance, such as wax, to adhere 
      to body hair, and then removing this covering and pulling out the hair from the follicle',100),
      ('Dermaplane','Dermaplaning is a procedure that exfoliates your skin and gets rid of dirt and vellus hair, better known as “peach 
      fuzz.”',250),
      ('Microdermabrasing','Microdermabrasion treatments use a minimally abrasive instrument to gently sand your skin, removing the thicker, 
      uneven outer layer, and has many benefits.', 200),
      ('Chemical Peal','A chemical peel is a procedure in which a chemical solution is applied to the skin to remove the top layers.', 175),
      ('Hydro Facial','A hydrafacial is one of the most powerful, non-invasive skin resurfacing treatments available today. It combines 
      cleansing, exfoliation, extraction, hydration and antioxidant protection that removes dead skin cells and impurities, while simultaneously
      delivering moisturizing serums into the skin.', 275);
SELECT * FROM services;


-- adding SERVICE_PICTURE 
INSERT INTO services_pic(url,service_id)
VALUES('https://cdn.shopify.com/s/files/1/1887/2671/files/Main_3d15820b-87ba-492b-93fe-42d7038a8a8b.jpg?23269',1),
	  ('https://static.wixstatic.com/media/2c5ea0df86d745dbb67a788f51522112.jpg/v1/fill/w_640,h_480,fp_0.38_0.41,q_80,usm_0.66_1.00_0.01/2c5ea0df86d745dbb67a788f51522112.webp',2),
      ('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4cLKIHW--uXANGp4IZpLNES67M7Gr_W6COYK2FsBguKeLL2QG3meO3cVFCjcgiSl34zQ&usqp=CAU',3),
      ('https://de927adv5b23k.cloudfront.net/wp-content/uploads/2017/09/29122217/Waxing-legs-salon.jpg',4),
      ('https://atallamd.com/wp-content/uploads/2020/08/atalla-dermaplane-2020-web.jpg',5),
      ('https://cdn.shopify.com/s/files/1/0071/6197/0758/products/microdermabrasion_pittsburgh_3_600x600.jpg?v=1612117229',6),
      ('https://skinenhanceclinic.com/wp-content/uploads/2020/11/chemicalpeelapplication.jpg',7),
      ('https://static.onecms.io/wp-content/uploads/sites/14/2019/02/20/022019-hydrafacial-lead.jpg',8);
SELECT * FROM services_pic;


 -- adding COSTUMER CART
INSERT INTO cart(costumer_id)
VALUES(1);
SELECT * FROM cart;


 -- adding SERVICES CART
INSERT INTO cart_service(cart_id,service_id)
VALUES(1, 8);
SELECT * FROM cart_service;