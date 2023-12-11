-- Assignment 1 SQL Commands
-- Question: List all details of actors.
select * from actor;
-- Question: List all customer information from DB
select * from customer;
-- Question: List different countries
select * from country;
select count(*) from country;
-- Question: Display all active customers
select * from customer;
select * from customer where active = "1";
-- Question: List of all rental IDs for customer with ID 1
select * from rental;
select * from rental where staff_id = "1";
-- Question: Display all the films whose rental duration is greater than 5
select * from film;
select * from film where rental_duration > 5;
-- Question: List the total number of film whose replacement cost is greater that $15 and less than $20
select * from film where replacement_cost between "15" and "20";
-- Question: Display the count of unique first names of actors
select count(first_name) from actor;
select distinct count(first_name) from actor;
-- Question: Display first 10 records from customer table
select * from customer;
select first_name, last_name from customer limit 10;
-- Question: Display first 3 records from customer table starts with 'b'
select first_name, last_name from customer where first_name like "B%" limit 3;
-- Question: Display the names of first 5 movies which are rated as 'G'
select distinct(rating) from film;
select title from film where rating = "G" limit 5;
-- Question: Find all customers whose first name starts with "a"
select * from customer where first_name like "a%";
-- Question: Find all customers whose first name ends with "a"
select * from customer where first_name like "%a";
-- Question: Display the list of first 4 cities which start and end with ‘a’
select * from city;
select city from city where city like "a%a" limit 4;
-- Question: Find all customers whose first name have "NI" in any position
select * from customer where first_name like "%NI%";
-- Question: Find all customers whose first name have "r" in the second position
select * from customer where substring(first_name, 2, 1) = 'r';
-- Question: Find all customers whose first name starts with "a" and are at least 5 characters in length
select * from customer where first_name like "a%" and length(first_name) = 5;
-- Question: Find all customers whose first name starts with "a" and ends with "o"
select first_name from customer where first_name like "a%o";
-- Question: Get the films with pg and pg-13 rating using IN operator
select rating from film;
select * from film where rating in ("PG", "PG-13");
-- Question: Get the films with length between 50 to 100 using between operator
select title, length from film;
select title, length from film where length between 50 and 100;
-- Question: Get the top 50 actors using limit operator
select * from actor;
select concat(first_name, " ", last_name) as Full_name from actor limit 50;
-- Question: Get the distinct film ids from inventory table.
select * from inventory;
select distinct(film_id) from inventory;