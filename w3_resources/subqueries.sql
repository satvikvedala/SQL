1.
select o.ord_no,o.purch_amt,o.ord_date,o.customer_id,s.salesman_id
from orders o
left join salesman s on o.salesman_id = s.salesman_id
where s.name = 'Paul Adam';

2.
select o.ord_no,o.purch_amt,o.ord_date,o.customer_id,s.salesman_id
from orders o
left join salesman s on o.salesman_id = s.salesman_id
where s.city = 'London';

3.
select o.ord_no,o.purch_amt,o.ord_date,o.customer_id,s.salesman_id
from orders o
left join salesman s on o.salesman_id = s.salesman_id
where o.customer_id = 3007;

4.
select avg(o.purch_amt)
from orders o
group by o.ord_date
where o.ord_date = '2012-10-10';
  
