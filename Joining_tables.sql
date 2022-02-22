
-- Joining Costumer and Session_Notes and Costuemr_Personal_Datainfo
select *  from costumer c
LEFT JOIN costumer_session_notes sn 
ON c.id=sn.id
LEFT JOIN costumer_data cdata 
ON c.id=cdata.id;


-- Joining Costumer Services from the cart
SELECT c.name, cart.id as cart_id, cs.service_id, s.service_name, s.price
FROM costumer c
LEFT JOIN cart ON cart.costumer_id = c.id
LEFT JOIN cart_service cs ON cs.cart_id = cart.id
LEFT JOIN services s ON s.id = cs.service_id;

-- Joining Costumer SUM of orders from the cart
SELECT c.name, sum(s.price) 
FROM costumer c
LEFT JOIN cart ON cart.costumer_id = c.id
LEFT JOIN cart_service cs ON cs.cart_id = cart.id
LEFT JOIN services s ON s.id = cs.service_id
GROUP BY name;


-- Joining Costumer SUM of orders from the cart
SELECT c.name, coalesce(sum(s.price),0 ) as orders_sum 
FROM costumer c
LEFT JOIN cart ON cart.costumer_id = c.id
LEFT JOIN cart_service cs ON cs.cart_id = cart.id
LEFT JOIN services s ON s.id = cs.service_id
GROUP BY name;