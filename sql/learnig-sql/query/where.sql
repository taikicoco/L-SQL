select title
from film
where rating = 'G' and rental_duration >= 7;

select title
from film
where rating = 'G' or rental_duration >= 7;

select title
from film
where (rating = 'G' and rental_duration >= 7)
or (rating = 'PG-13' and rental_duration < 4);
