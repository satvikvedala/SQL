1.
select sum(purch_amt)
from orders;

2.
select avg(purch_amt)
from orders;

3.
select count(distinct salesman_id)
from orders;

4.
select count(distinct customer_id)
from orders;

5.
select count(distinct customer_id)
from customer
where not grade is NULL;

6.
select max(purch_amt)
from orders;

7.
select min(purch_amt)
from orders;

8.
select city, max(grade) as maxim
from customer
group by city
order by maxim desc, city;

9.
select customer_id, max(purch_amt)
from orders
group by customer_id
order by max(purch_amt);

10.
select customer_id, ord_date, max(purch_amt)
from orders
group by ord_date, customer_id;

11.
select salesman_id, max(purch_amt)
from orders
where ord_date = '2012-08-17'
group by salesman_id;

12.
select customer_id,ord_date,max(purch_amt)
from orders
group by customer_id,ord_date
having max(purch_amt)>2000.00;

13.
select customer_id,ord_date,max(purch_amt)
from orders
group by customer_id,ord_date
having (max(purch_amt)>=2000.00 and max(purch_amt)<=6000);

14.
select customer_id,ord_date,max(purch_amt)
from orders
group by customer_id,ord_date
having max(purch_amt) in (2000,3000,5760,6000);

15.
select customer_id,max(purch_amt)
from orders
group by customer_id
having customer_id>=3002 and customer_id<=3007;

16.
select customer_id,max(purch_amt)
from orders
group by customer_id
having (customer_id>=3002 and customer_id<=3007) and max(purch_amt)>1000;

/*OR*/

select customer_id,max(purch_amt)
from orders
where (customer_id>=3002 and customer_id<=3007)
group by customer_id
having max(purch_amt)>1000;

17.
select salesman_id,max(purch_amt)
from orders
group by salesman_id
having salesman_id>=5003 and salesman_id<=5008;

18.
select count(ord_no)
from orders
where ord_date = '2012-08-17';

19.
select count(salesman_id)
from salesman
where city is not NULL;

20.
select ord_date,salesman_id,count(ord_no)
from orders
group by ord_date,salesman_id;

21.
select avg(pro_price)
from item_mast;

22.
select count(pro_id)
from item_mast
where pro_price>=350;

23.
select avg(pro_price), pro_com
from item_mast
group by pro_com;

24.
select sum(dpt_allotment)
from emp_department;

25.
select emp_dept, count(emp_idno)
from emp_details
group by emp_idno;

