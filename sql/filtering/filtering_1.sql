-- not 演算子
select *
from customer
where not (first_name = 'STEVEN' or last_name = 'YOUNG')
    and create_date > '2006-01-01';

-- between 演算子
select customer_id, rental_date
from rental
where rental_date between '2005-06-14' and '2005-06-16';

-- サブクエリ
select title, rating
from film
where rating in (
    select rating
    from film
    where title like '%PET%'
);

select title, rating
from film
where title like '%PET%';

-- ワイルドカード
select last_name, first_name
from customer
where last_name like '_A_T%S'; --2文字目がA,4文字目がT最後の文字がS

