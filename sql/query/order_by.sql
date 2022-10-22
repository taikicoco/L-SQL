select c.first_name, c.last_name,
time (r.rental_date) as rental_time
from customer as c
    inner join rental as r
    on c.customer_id = r.customer_id
where date(r.rental_date) = '2005-06-14'
order by c.last_name;

-- data time date

select c.first_name, c.last_name,
time (r.rental_date) as rental_time
from customer as c
    inner join rental as r
    on c.customer_id = r.customer_id
where date(r.rental_date) = '2005-06-14'
order by c.last_name 3 desc
limit 5;
