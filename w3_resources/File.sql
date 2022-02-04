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
where (subject = 'Physiology' and year<
