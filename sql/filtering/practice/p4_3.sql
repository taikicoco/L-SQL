select *
from payment
where amount = 1.98 or amount = 7.98 or amount = 9.98;

select *
from payment 
where amount in (1.98, 7.98, 9.98);