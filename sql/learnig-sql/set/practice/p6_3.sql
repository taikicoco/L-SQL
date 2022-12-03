select c.first_name as fname, c.last_name as lname
from customer as c
where c.last_name like 'L%'
union 
select a.first_name, a.last_name
from actor as a
where a.last_name like 'L%'
order by lname;
