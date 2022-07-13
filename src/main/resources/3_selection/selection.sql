select * from EMPLOYEES;

select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES where SALARY = 17000;

select FIRST_NAME, SALARY from EMPLOYEES where LAST_NAME = 'King';

select *  from EMPLOYEES where HIRE_DATE = '21.09.05';

select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES where SALARY < 9000;

-- between in isnull
select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES where SALARY between 8000 and 9000;
select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES where SALARY >= 8000 and SALARY <= 9000;
select FIRST_NAME, LAST_NAME from EMPLOYEES where FIRST_NAME between 'A' and 'G';

select * from DEPARTMENTS where LOCATION_ID in (1700 ,2400);
select * from DEPARTMENTS where LOCATION_ID = 1700 or LOCATION_ID = 2400;

select * from EMPLOYEES where COMMISSION_PCT is null;

-- like
select *  from EMPLOYEES where FIRST_NAME like 'S%';
select *  from EMPLOYEES where FIRST_NAME like 'D_n';
select *  from EMPLOYEES where FIRST_NAME like '_n%';
select *  from EMPLOYEES where JOB_ID like 'ST\_%' escape '\';

-- order by
select FIRST_NAME, SALARY from EMPLOYEES order by FIRST_NAME desc ;
select LAST_NAME, HIRE_DATE from EMPLOYEES where EMPLOYEE_ID > 120 order by LAST_NAME asc;
select * from EMPLOYEES order by COMMISSION_PCT desc nulls last;
select * from EMPLOYEES order by COMMISSION_PCT desc nulls first;
