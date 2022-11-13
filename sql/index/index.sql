alter table customer
add index idx_email (email);


show index from customer \G ;