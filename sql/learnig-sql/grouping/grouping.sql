select customer_id
from rental 
group by customer_id;

select customer_id, count(*)
from rental 
group by customer_id
having count(*) >= 40;

select  max(amount) max_amt,
        min(amount) min_amt,
        avg(amount) avg_amt,
        sum(amount) tot_amt,
        count(*) num_payments
from payment;

select  customer_id,
        max(amount) max_amt,
        min(amount) min_amt,
        avg(amount) avg_amt,
        sum(amount) tot_amt,
        count(*) num_payments
from payment
group by customer_id;

select fa.actor_id, f.rating, count(*)
from film_actor as fa
    inner join film as f
    on fa.film_id = f.film_id
group by fa.actor_id, f.rating
order by 1,2;

select fa.actor_id, f.rating, count(*)
from film_actor as fa
    inner join film as f
    on fa.film_id = f.film_id
where f.rating in ('G', 'PG')
group by fa.actor_id, f.rating
having count(*) > 9;