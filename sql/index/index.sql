alter table customer
add index idx_email (email);


show index from customer \G ;

alter table customer
drop index idx_email;
