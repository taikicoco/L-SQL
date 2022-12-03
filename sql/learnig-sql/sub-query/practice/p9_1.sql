select title
from film
where film_id in
    (select fc.film_id 
    from film_category as fc inner join category as c
        on fc.category_id = c.category_id
    where c.name = 'Action');
