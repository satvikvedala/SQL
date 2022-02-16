1.
select s.name,c.cust_name,s.city
from salesman s
cross join customer c
where s.city = c.city;

2.
select o.ord_no, o.purch_amt, c.cust_name, c.city
from orders o, customer c
where (o.cutomer_id = c.customer_id) and (o.purch_amt>500 and o.purch_amt<2000);

3.
select c.cust_name,c.city,s.name,s.commission
from customer c,salesman s
where (c.salesman_id = s.salesman_id);

--or

select c.cust_name,c.city,s.name,s.commission
from customer c
cross join salesman s
where (c.salesman_id = s.salesman_id) and (s.commission>0.12);

4.
select c.cust_name,c.city,s.name,s.commission
from customer c,salesman s
where (c.salesman_id = s.salesman_id) and (s.commission>0.12);

--or

select c.cust_name,c.city,s.name,s.commission
from customer c
cross join salesman s
where (c.salesman_id = s.salesman_id) and (s.commission>0.12);

5.
select c.cust_name,c.city,s.name,s.commission
from customer c,salesman s
where (c.salesman_id = s.salesman_id) and (s.city != c.city) and (s.commission>0.12);

--or

select c.cust_name,c.city,s.name,s.commission
from customer c
cross join salesman s
where (c.salesman_id = s.salesman_id) and (s.city != c.city) and (s.commission>0.12);

6.
select o.ord_no, o.ord_date, o.purch_amt, c.cust_name, c.grade, s.name, s.commission
from orders o, customer c, salesman s
where (o.customer_id = c.customer_id) and (c.salesman_id = s.salesman_id);

7.
select *
from orders
natural join customer
natural join salesman;

8.
select c.cust_name, c.city, c.grade, s.name, s.city
from customer c, salesman s
where (c.salesman_id = s.salesman_id)
order by c.customer_id asc;

--or

select c.cust_name, c.city, c.grade, s.name, s.city
from customer c
cross join salesman s on s.salesman_id = c.customer_id
order by c.customer_id asc;

9.
select c.cust_name, c.city, c.grade, s.name, s.city
from customer c
cross join salesman s
where (s.salesman_id = c.salesman_id)
order by customer_id asc;

17.
select s.salesman_id,s.name,s.city,s.commission
from salesman s
cross join customer c;

18.


