select c.first_name, c.last_name, count(*)
from customer as c
    inner join rental as r
    on c.customer_id = r.customer_id
group by c.first_name, c.last_name
having count(*) >= 40;
