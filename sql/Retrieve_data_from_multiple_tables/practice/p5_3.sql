select a1.address as addr1, a2.address as addr2, a1.city_id
from address as a1
    inner join address as a2
where a1.city_id = a2.city_id
    and a1.address_id <> a2.address_id;