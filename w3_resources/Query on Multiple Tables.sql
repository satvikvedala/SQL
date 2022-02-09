1.
select c.cust_name, s.name, s.city
from salesman s 
inner join customer c on s.salesman_id = c.salesman_id;

2.
select c.cust_name,s.name
from salesman s
join customer c on s.salesman_id = c.salesman_id;

3.
select o.ord_no,c.cust_name,c.customer_id,s.salesman_id
from orders o
join customer c on c.salesman_id = o.salesman_id
join salesman s on s.salesman_id = c.salesman_id
where s.city != c.city;

4.
select o.ord_no, c.cust_name
from orders o,customer c
where o.salesman_id = c.salesman_id;

5.
select o.ord_no, c.cust_name
from orders o,customer c
where o.customer_id = c.customer_id;

6.
select c.cust_name,c.city,s.name,s.commission
from salesman s,customer c
where s.commission>=0.12 and s.commission<=0.14 and s.salesman_id = c.salesman_id;

7.
select o.ord_no,c.cust_name,c.commission,o.purch_amt*c.commission
from orders o,customer c,salesman s
where (s.salesman_id = c.salesman_id) and (c.customer_id = o.customer_id) and (c.grade>100);

8.
select c.customer_id, c.cust_name, c.city, c.grade, s.salesman_id,o.ord_no,o.purch_amt,o.ord_date,c.customer_id,s.salesman_id
from orders o,customer c,salesman s
where (s.salesman_id = c.salesman_id) and (c.customer_id = o.customer_id) and (o.ord_date = '2012-10-05');
