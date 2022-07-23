-- GROUP BY
select DEPARTMENT_ID, count(*) from EMPLOYEES group by DEPARTMENT_ID order by 1,2;
select JOB_ID, min(SALARY), max(SALARY) from EMPLOYEES group by JOB_ID;

-- HAVING
select DEPARTMENT_ID,count(*) from EMPLOYEES group by DEPARTMENT_ID having count(*) > 3 order by DEPARTMENT_ID;