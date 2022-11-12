select f.film_id, f.title, count(*) as num_copies
from film as f
    inner join inventory as i
    on f.film_id = i.film_id
group by f.film_id, f.title;