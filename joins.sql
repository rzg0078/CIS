use cis;
create table T1 (num int);
create table T2 (num2 int);
select * from t1;
ALTER TABLE T2
RENAME COLUMN num2 to num;
insert into T1 values (1),(2),(NULL),(3),(2),(4),(4),(6),(10);
insert into T2 values (7),(NULL),(NULL),(3),(4),(4),(2),(2),(8);
/* inner join*/

SELECT t2.num, t1.num FROM T1
INNER JOIN T2 ON T1.num = T2.num;
/*left join*/
SELECT  *
FROM T1
left JOIN T2
ON T1.num = T2.num;

/* right join*/

SELECT *
FROM T1
right JOIN T2
ON T1.num = T2.num2;


/* full outer join*/

SELECT *
FROM T1
LEFT JOIN T2 ON T1.num = T2.num
UNION ALL
SELECT *
FROM T1
RIGHT JOIN T2 ON T1.num = T2.num   
where t1.num is Null  ;
    
/* left anti join*/
    
SELECT *
FROM T1
LEFT JOIN T2 ON T1.num = T2.num
WHERE t2.num IS NULL;   


