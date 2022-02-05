1.
select *
from salesman
where city = 'Paris' or city = 'Rome';

2.
select *
from salesman
where city = 'Paris' or city = 'Rome';

3.
select *
from salesman
where not(city = 'Paris' or city = 'Rome');

4.
select *
from customer
where (customer_id = 3007 or customer_id = 3008 or customer_id = 3009);

5.
select *
from salesman
where (commission>=0.12 and commission<=0.14);

6.
select *
from orders
where (purch_amt>500 and purch_amt<4000) and (purch_amt != 948.50 and purch_amt != 1983.43);
       
7.
select *
from salesman
where (name between 'A%' and 'L%');

8.
select *
from salesman
where (name not between 'A%' and 'L%');

9.
select *
from customer
where cust_name like 'B%';

10.
select *
from customer
where cust_name like '%n';

11.
select *
from salesman
where name like 'N__l%';

12.
select *
from testtable
where col1 like '%/_%';

13.
select *
from testtable
where col1 not like '%/_%';

14.
select *
from testtable
where col1 like '%$/%' escape '$';
