use sakila;

#1
select last_name, group_concat(first_name) AS first_names
from actor
group by last_name
having count(*) = 1;

#2
select last_name, group_concat(first_name) AS first_names
from actor
group by last_name
having count(*) > 1;                

#3
select staff_id, count(*)
from rental
group by staff_id;

#4
select release_year , count(*) as films_released
from film 
group by release_year;

#5
select rating, count(*)
from film
group by rating;

#6
select rating, round(avg(length), 2) as mean_length
from film
group by rating;

#7
select rating, round(avg(length), 2) as mean_length
from film
group by rating
having mean_length > 120;