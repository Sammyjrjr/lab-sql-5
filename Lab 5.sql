-- 1 Drop column picture from staff.
alter table staff
drop column picture;
-- 2 A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.
select * from sakila.customer where first_name = 'TAMMY';
select * from sakila.staff;
insert into staff(store_id, first_name, last_name,address_id, username) values
(2,'TAMMY','SANDERS',79, 'Tammy');
-- 3 Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1. You can use current date for the rental_date column in the rental table. Hint: Check the columns in the table rental and see what information you would need to add there. You can query those pieces of information. For eg., you would notice that you need customer_id information as well. To get that you can use the following query:	
select customer_id from sakila.customer
where first_name = 'CHARLOTTE' and last_name = 'HUNTER';
-- 4 Delete non-active users, but first, create a backup table deleted_users to store customer_id, email, and the date for the users that would be deleted. Follow these steps:
-- .