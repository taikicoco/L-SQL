select distinct customer_id
from rental
where date(rental_date) = '2005-07-05';