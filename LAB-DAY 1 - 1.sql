-- Lab | SQL - Lab 3.01

-- Drop column picture from staff.

ALTER TABLE staff DROP COLUMN picture;
SELECT * FROM staff;

-- A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. 
-- Update the database accordingly.

SELECT * FROM sakila.customer
WHERE first_name = 'TAMMY';

INSERT INTO staff (staff_id,first_name, last_name,email, store_id, address_id, active, username)
VALUES 
(3,'TAMMY','SANDERS', 'TAMMY.SANDERS@sakilacustomer.org', 2, 79, 1, 'tammy');

-- Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1. 
-- You can use current date for the rental_date column in the rental table. 
-- Hint: Check the columns in the table rental and see what information you would need to add there.
--  You can query those pieces of information. 
-- For eg., you would notice that you need customer_id information as well. 
-- To get that you can use the following query:

SELECT * FROM rental;
SELECT * FROM film;
WHERE title = 'Academy Dinousaur';
SELECT * FROM customer;
SELECT * FROM customer
WHERE first_name = 'CHARLOTTE' AND last_name = 'HUNTER';
SELECT * FROM inventory
WHERE film_id = 1;
-- Invetory_id = 1, Customer_id = 130 , film_id = 1, staff_id = 1
INSERT INTO sakila.rental (rental_date, inventory_id, customer_id, staff_id)
VALUES (curdate(), 1, 130, 1);
SELECT * FROM rental
WHERE customer_id = '130' AND inventory_id = '1'





