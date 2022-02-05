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
where (purch(purch_amt!=948.50 and purch_amt!=1983.50);
       
7.
