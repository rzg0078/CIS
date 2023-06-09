create database CIS;
use CIS;
create table employee ( emp_id int, emp_name varchar(30), manager_id int);
insert into employee values (1, 'Boss', 1), 
(3, 'Alice', 3), (2, 'bob', 1),(4, 'Daniel',2),
(7,'Luis',4),(8, 'Jhon', 3),(9, 'Angela', 8),(77,'Robert', 1);

select * from employee;	

SELECT e1.emp_id
FROM employee e1
JOIN employee e2 ON e2.emp_id = e1.manager_id
join employee e3 on e3.emp_id = e2.manager_id
join employee e4 on e4.emp_id = e3.manager_id
WHERE e3.manager_id = 1 and e1.emp_id != 1;


SELECT emp_id FROM employee WHERE manager_id IN (
  SELECT emp_id FROM employee WHERE manager_id IN (
    SELECT emp_id FROM employee WHERE manager_id = 1
  )
) and emp_id !=1;


