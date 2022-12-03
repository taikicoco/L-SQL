select f.title
from film as f
where exists
    (select 1
    from film_category as fc inner join category as c
        on fc.category_id = c.category_id
        where c.name = 'Action' and fc.film_id = f.film_id);
