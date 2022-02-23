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
select *
from orders
where o.purch_amt >
(select avg(o.purch_amt)
from orders o
group by o.ord_date
having o.ord_date = '2012-10-10');
  
5.
select *
from orders
where o.salesman_id = (
  select s.salesman_id
  from salesman s
  where s.city = 'New York');
  
6.
select commission
from salesman s
where city = 'Paris';

7.
select *
from customer
where customer_id = (
  select salesman_id
  from salesman
  where name = 'Mc Lyon')- 2001;
  
8.
select *
from customer
where grade > (
  select avg(grade)
  from customer
  group by city = 'New York');
  
9.
select ord_no, purch_amt, ord_date, salesman_id
from orders
where salesman_id = (
  select salesman_id
from salesman
where commission = (select max(commission) from salesman));

10.
select o.ord_no,o.purch_amt,o.ord_date,o.customer_id,o.salesman_id,
(select c.cust_name 
 from customer c 
 where 
 c.customer_id = o.customer_id)
from orders o
where o.ord_date = '2012-08-17';
  
 11.
select s.salesman_id, s.name
from salesman s
where s.salesman_id in (
select c.salesman_id
from customer c
group by c.salesman_id
having count(c.customer_id)>1);

12.
select *
from orders 
where purch_amt > (select avg(purch_amt)
                from orders);
               
13.
select *
from orders
where purch_amt >= (select avg(prch_amt) from orders);

14.


15.
select *
from customer
where exists (select *
from customer
where city = 'London');

16.
select *
from salesman
where salesman_id = (select salesman_id
                     from customer
                     group by salesman_id
                     having count(*)>1);

17.
select *
from salesman
where salesman_id = (select salesman_id
                     from customer
                     group by salesman_id
                     having count(*) == 1);
                     
18.
19.
select s.salesman_id, s.name, s.city, s.commission
from salesman s
where city in (select city from customer);  

20.
select s.salesman_id, s.name, s.city, s.commission
from salesman s
where city in (select city from customer); 

21.
select *
from salesman s
where exists (select *
              from customer c
              where c.cust_name>s.name);
              
22.
select *
from customer a
where exists (select *
              from customer b
              where (b.city<'New York') and (a.grade>b.grade));
              
23.
select *
from orders
where purch_amt > any (select purch_amt
                   from orders
                   where ord_date = '2012-09-10');
--or
select *
from orders o
where exists (select *
              from orders a
              where (a.ord_date = '2012-09-10') and (a.purch_amt<o.purch_amt));
                   
24.
select *
from orders a 
where a.purch_amt< any(select purch_amt
                       from orders
                       where customer_id in (select customer_id
                                             from customer
                                             where city = 'London'));
25.
select *
from orders a
where a.purch_amt< (select max(purch_amt)
from orders o, customer c
where (o.customer_id = c.customer_id) and c.city = 'London');

26.
select *
from customer
where grade > all (select grade
               from customer
               where city = 'New York');
               
27.
select s.salesman_id, s.name, s.city,o.purch_amt
from salesman s,orders o
where (s.slaesman_id = o.salesman_id) and (;
                                           
28.
select *
from customer
where grade!= any (select grade
               from customer
               where city = 'London');
29.
select *
from customer
where grade!= any (select grade
               from customer
               where city = 'Paris'); 

30.
select *
from customer
where grade!= any (select grade
               from customer
               where city = 'Dallas');

                                           
