select customer_id, count(*)
from payment
group by customer_id
having count(*) >= 40;
