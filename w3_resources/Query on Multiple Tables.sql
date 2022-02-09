1.
select c.cust_name, s.name, s.city
from salesman s 
inner join customer c on s.salesman_id = c.salesman_id;
