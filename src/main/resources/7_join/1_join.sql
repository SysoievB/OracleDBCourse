-- INNER(NATURAL) JOIN
select * from REGIONS natural join COUNTRIES;

-- JOIN USING
select FIRST_NAME, LAST_NAME, jh.JOB_ID, START_DATE, END_DATE
from EMPLOYEES join JOB_HISTORY jh using (EMPLOYEE_ID, DEPARTMENT_ID);

-- JOIN ON
select FIRST_NAME, LAST_NAME, jh.JOB_ID, START_DATE, END_DATE
from EMPLOYEES join JOB_HISTORY jh on (EMPLOYEES.EMPLOYEE_ID = jh.EMPLOYEE_ID);

-- SELF JOIN
select emp1.EMPLOYEE_ID,
       emp1.FIRST_NAME,
       emp1.LAST_NAME,
       emp1.MANAGER_ID,
       emp2.FIRST_NAME manager_name
from EMPLOYEES emp1
join EMPLOYEES emp2 on (emp1.MANAGER_ID = emp2.EMPLOYEE_ID);

-- LEFT OUTER JOIN
select FIRST_NAME,
       LAST_NAME,
       SALARY,
       DEPARTMENT_NAME
from EMPLOYEES e
left outer join DEPARTMENTS d on (d.DEPARTMENT_ID = e.DEPARTMENT_ID);

-- RIGHT OUTER JOIN
select FIRST_NAME,
       LAST_NAME,
       SALARY,
       DEPARTMENT_NAME
from EMPLOYEES e
         right outer join DEPARTMENTS d on (d.DEPARTMENT_ID = e.DEPARTMENT_ID);

-- FULL OUTER JOIN
select FIRST_NAME,
       LAST_NAME,
       SALARY,
       DEPARTMENT_NAME
from EMPLOYEES e
         full outer join DEPARTMENTS d on (d.DEPARTMENT_ID = e.DEPARTMENT_ID);

-- CROSS JOIN
select FIRST_NAME,
       LAST_NAME,
       SALARY,
       DEPARTMENT_NAME
from EMPLOYEES
         cross join DEPARTMENTS;

-- Oracle JOIN
-- Oracle  inner join
select FIRST_NAME, LAST_NAME, SALARY, e.DEPARTMENT_ID, DEPARTMENT_NAME
from EMPLOYEES e, DEPARTMENTS d
where e.DEPARTMENT_ID = d.DEPARTMENT_ID;
-- Oracle right join
select FIRST_NAME, LAST_NAME, SALARY, e.DEPARTMENT_ID, DEPARTMENT_NAME
from EMPLOYEES e, DEPARTMENTS d
where e.DEPARTMENT_ID (+) = d.DEPARTMENT_ID;
-- Oracle left join
select FIRST_NAME, LAST_NAME, SALARY, e.DEPARTMENT_ID, DEPARTMENT_NAME
from EMPLOYEES e, DEPARTMENTS d
where e.DEPARTMENT_ID = d.DEPARTMENT_ID (+);
-- Oracle cross join
select * from COUNTRIES, REGIONS;