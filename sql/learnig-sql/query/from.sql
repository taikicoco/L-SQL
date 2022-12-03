select concat(cust.last_name, ',', cust.first_name) full_name
    from 
        (select first_name, last_name
        from customer
        where first_name = 'JESSIE'
        ) cust;

-- temporary table
create temporary table actors_j
    (actor_id smallint(5),
    first_name varchar(45),
    last_name varchar(45)
    );

insert into actors_j
select actor_id, first_name, last_name
from actor
where last_name like 'J%';

select * from actors_j;

-- VIEW
create view cust_vw as
select customer_id, first_name, last_name, active
from customer;

select first_name, last_name 
from cust_vw
where active = 0;

-- JOIN
select customer.first_name, customer.last_name,
    time(rental.rental_date) rental_time
from customer
    inner join rental
    on customer.customer_id = rental.customer_id
where date(rental.rental_date) = '2005-06-14';

-- テーブルエイリアス
select c.first_name, c.last_name,
    time(r.rental_date) rental_time
from customer as c
    inner join rental as r
    on c.customer_id = r.customer_id
where date(r.rental_date) = '2005-06-14';



