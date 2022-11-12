select customer_id, first_name, last_name
from customer
where customer_id = (
    select max(customer_id) from customer
);


select city_id, city 
from city
where country_id <>
    (select country_id from country where country = 'India');

select c.first_name, c.last_name, pymnt.num_rentals, pymnt.tot_payments
from customer as c
    inner join (
        select customer_id, count(*) as num_rentals, sum(amount) as tot_payments
        from payment 
        group by customer_id
    ) as pymnt
    on c.customer_id = pymnt.customer_id;