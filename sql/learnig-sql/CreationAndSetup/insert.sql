INSERT into person
(person_id, fname, lname, eye_color, birth_date)
values (null, 'william', 'turner', 'BR', '1972-05-27');

INSERT into favorite_food (person_id, food)
values (1, 'pizza');

INSERT into favorite_food (person_id, food)
values (1, 'cookies');

INSERT into favorite_food (person_id, food)
values (1, 'nachos');

INSERT into person
(person_id, fname, lname, eye_color, birth_date, street, city, state, country, postal_code)
values (null, 'Susan', 'Sumith', 'BL', '1975-11-02',
'23 Maple St.', 'Arlington', 'VA', 'USA', '20220');
