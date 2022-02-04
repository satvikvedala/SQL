8. /*From the following table, write a SQL query to find the unique salespeople ID. Return salesman_id.*/

select distinct salesman_id
from orders;

9. /*From the following table, write a SQL query to find the salespeople who lives in the City of 'Paris'. Return salesperson's name, city*/
select name
from salesman
where city = 'Paris';

10.
select customer_id, cust_name,city,grade,salesman_id
from customer
where grade = 200;

11.
select ord_no,ord_date,purch_amt
from orders
where salesman_id = 5001;

12.
select year,subject,winner
from nobel_win;
where year = 1970;

13.
select winner
from nobel_win
where subject = 'Literature' and year = 1971;

14.
select  year,subject
from nobel_win
where winner = 'Dennis Gabbor';

15.
select winner
from nobel_win
where subject = 'Physics' and Year>=1950;

16.
select year,subject,winner,country
from nobel_win
where subject = 'Chemistry' and (year>=1965 and year<=1975);

17.
select *
from nobel_win
where year>1972

18.
select year,subject,winner,country,category
from nobel_win
where winner like 'Louis%';

19.
select year,subject,winner,country,category
from nobel_win
where (subject = 'Physics' and year = 1970) or (subject = 'Economics' and year = 1971);

20.
select *
from nobel_win
where (year = 1970) and (subject!='Physiology' and subject!='Economics'); 

21.
select *
from nobel_win
where (subject = 'Physiology' and year<1971) or (subject = 'Peace' and year>=1974);

22.
select *
from nobel_win
where winner = 'Johannes Georg Bednorz';

23.
select *
from nobel_win
where subject not like 'P%';

24.
select *
from nobel_win
where year = 1970
order by (subject != 'Chemistry' and subject!= 'Economics') desc, subject asc;

25.
select *
from item_mast
where (pro_price>=200 and pro_price<=600);

26.
select avg(PRO_PRICE)
from item_mast
where PRO_COM = 16;

27.
select pro_name as Item_Name, pro_price as Price_in_Rs
from item_mast;

28.
select pro_name, pro_price
from item_mast
where pro_price>=250
order by pro_price desc, pro_name asc;

29.
select pro_id, avg(pro_price)
from item_mast
group by pro_name;

30.
select pro_name, pro_price
from item_mast
order by pro_price asc;

31.
select distinct emp_lname
from emp_details;

32.
select *
from emp_details
where emp_lname = 'Snares';

33.
select *
from emp_details
where emp_dept = 57;




