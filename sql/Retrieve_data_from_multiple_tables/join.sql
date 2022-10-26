-- 内部結合
select c.first_name, c.last_name, a.address
from customer as c
    join address as a
    on c.address_id = a.address_id;

select c.first_name, c.last_name, a.address
from customer as c
    inner join address as a
    on c.address_id = a.address_id;

-- 3つのテーブルを結合する
select c.first_name, c.last_name, ct.city
from customer as c
    inner join address as a
    on c.address_id = a.address_id
    inner join city as ct
    on a.city_id = ct.city_id;

select straight_join c.first_name, c.last_name, ct.city
from customer as c
    inner join address as a
    on c.address_id = a.address_id
    inner join city as ct
    on a.city_id = ct.city_id;

-- サブクエリ
select c.first_name, c.last_name, addr.address, addr.city
from customer as c
    inner join (
        select a.address_id, a.address, ct.city
        from address as a
            inner join city as ct
            on a.city_id = ct.city_id
        where a.district = 'California'
    ) as addr
    on c.address_id = addr.address_id;

select f.title
from film as f
    inner join film_actor as fa
    on f.film_id = fa.film_id
    inner join  actor as a
    on fa.actor_id = a.actor_id
where (
    (a.first_name = 'CATE' and a.last_name = 'MCQUEEN')
    or (a.first_name = 'CUBA' and a.last_name = 'BIRCH')
);