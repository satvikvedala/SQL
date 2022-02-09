1.
select salesman_id, name, city, concat(commission*100,"%")
from salesman;

2.
SELECT 'For' as a,ord_date,'there are' as b, count(ord_no), 'orders' as c
from orders
group by ord_date;

3.
select *
from orders
order by ord_no;

4.
select *
from orders
order by ord_date desc;

5.
select *
from orders
order by ord_date desc, purch_amt desc;

6.
select cust_name,city,grade
from customer
order by customer_id;

7.
select salesman_id, ord_date, max(purch_amt)
from orders
group by ord_date
order by salesman_id asc, ord_date asc;

8.
select cust_name, city, grade
from customer
order by grade desc;

9.
select customer_id,count(distinct ord_no),max(purch_amt)
from orders
group by customer_id
order by count(distinct ord_no) desc;

10.
select ord_date, sum(purch_amt), sum(purch_amt)*0.15
from orders
group by ord_date
order by ord_date;
