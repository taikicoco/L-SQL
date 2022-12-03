select 1 num, 'abc' str
union 
select 9 num, 'xyz' str;

-- 集合演算子
select c.first_name, c.last_name
from customer as c
where c.first_name like 'J%' and c.last_name like 'D%'
union all
select a.first_name, a.last_name
from actor as a
where a.first_name like 'J%' and a.last_name like 'D%';


select c.first_name, c.last_name
from customer as c
where c.first_name like 'J%' and c.last_name like 'D%'
union 
select a.first_name, a.last_name
from actor as a
where a.first_name like 'J%' and a.last_name like 'D%';

-- 複合クエリの並び替え
select c.first_name as fname, c.last_name as lname
from customer as c
where c.first_name like 'J%' and c.last_name like 'D%'
union all
select a.first_name, a.last_name
from actor as a
where a.first_name like 'J%' and a.last_name like 'D%'
order by lname, fname;
