select f.title
from film as f
    inner join film_actor as fa
    on fa.film_id = f.film_id
    inner join actor as a
    on a.actor_id = fa.actor_id
where a.first_name = 'JOHN';