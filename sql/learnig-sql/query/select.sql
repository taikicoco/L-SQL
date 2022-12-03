select * from language;

select language_id,
    'common' language_usage,
    language_id * 3.14 lang_pi_value,
    upper(name) language_name
    from language;

select version(),
    user(),
    database();


-- 重複を取り除く
select actor_id from film_actor order by actor_id;

-- DISTINCT　select キーワードの直後
select distinct actor_id from film_actor order by actor_id;
