select @@global.time_zone, @@session.time_zone;
set time_zone = 'Asia/Tokyo';

select current_date(), current_time(), current_timestamp();