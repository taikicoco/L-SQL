select @@session.sql_mode;
set @@sql_mode = 'ansi';

create table string_tbl
(
    char_fld char(30),
    vchar_fld varchar(30),
    text_fld text
);

insert into string_tbl (char_fld, vchar_fld, text_fld)
values ('this string is 28 characters',
        'this string is 28 characters',
        'this string is 28 characters');

select  length(char_fld) char_length,
        length(vchar_fld) varchar_length,
        length(text_fld) text_length
from string_tbl;

select position('characters' in vchar_fld)
from string_tbl;

select LOCATE('characters', vchar_fld, 5)
from string_tbl;

select name, name like '%y' as ends_in_y
from category;