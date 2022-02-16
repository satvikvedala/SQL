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
select s.salesman_id,s.name,s.city,s.commission
from salesman s
cross join customer c
where (s.city is not NULL) and (c.city is not NULL);

19.
select s.salesman_id,s.name,s.city,s.commission
from salesman s
cross join customer c
where (s.city is not NULL) and (c.city is not NULL) and (c.grade is not NULL);

20.
select s.salesman_id,s.name,s.city,s.commission
from salesman s
cross join customer c
where (s.city is not NULL) and (s.city != c.city) and (c.grade is not NULL);

21.
select *
from company_mast cm,item_mast im
where cm.com_id = im.pro_com;

--or
select *
from company_mast cm
inner join item_mast im
on cm.com_id = im.pro_com;

22.
select cm.com_name, avg(im.pro_price)
from company_mast cm
inner join item_mast im
on cm.com_id = im.pro_com
group by cm.com_name;

23.
select cm.com_name, avg(im.pro_price)
from company_mast cm
inner join item_mast im
on cm.com_id = im.pro_com
group by cm.com_name;

24.
select cm.com_name, avg(im.pro_price)
from company_mast cm
inner join item_mast im
on cm.com_id = im.pro_com
group by cm.com_name
having avg(im.pro_price)>=350;

25.
select cm.com_name, im.pro_price,im.pro_name
from item_mast im
inner join company_mast cm
on cm.com_id = im.pro_com
where im.pro_price = 
(
select max(a.pro_price)
from item_mast a
where cm.com_id = a.pro_com
);

26.
select e.emp_idno, e.emp_fname, e.emp_lname, e.emp_dept,d.dpt_name
from emp_details e
left join emp_department d
on e.emp_dept = d.dpt_code;

27.
select e.emp_fname, e.emp_lname,d.dpt_name,d.dpt_allotment
from emp_details e
left join emp_department d
on e.emp_dept = d.dpt_code;

--or

select e.emp_fname, e.emp_lname,d.dpt_name,d.dpt_allotment
from emp_details e
inner join emp_department d
on e.emp_dept = d.dpt_code;

28.
select e.emp_fname, e.emp_lname
from emp_details e
inner join emp_department d
on e.emp_dept = d.dpt_code
where d.dpt_allotment>50000;

29.
select d.dpt_name
from emp_department d
inner join emp_details e
on e.emp_dept = d.dpt_code
group by d.dpt_name
having count(*)>1;

