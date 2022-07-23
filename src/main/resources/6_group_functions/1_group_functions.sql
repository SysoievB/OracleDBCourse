-- COUNT
select count(*) from EMPLOYEES; -- 107
select * from EMPLOYEES;
select count(COMMISSION_PCT) from EMPLOYEES; -- 35
select count(all COMMISSION_PCT) from EMPLOYEES; -- 35
select count(distinct COMMISSION_PCT) from EMPLOYEES;

-- SUM
select sum(SALARY) from EMPLOYEES;
select sum(all SALARY) from EMPLOYEES;
select sum(COMMISSION_PCT) from EMPLOYEES;
select sum(distinct COMMISSION_PCT) from EMPLOYEES;
select round(sum(sysdate - HIRE_DATE)/365) from EMPLOYEES;

-- AVERAGE
select avg(SALARY) from EMPLOYEES;
select avg(all SALARY) from EMPLOYEES;
select avg(COMMISSION_PCT) from EMPLOYEES;
select avg(distinct COMMISSION_PCT) from EMPLOYEES;

-- MAX
select max(SALARY) from EMPLOYEES;
select max(all SALARY) from EMPLOYEES;
select max(COMMISSION_PCT) from EMPLOYEES;
select max(distinct COMMISSION_PCT) from EMPLOYEES;
select max(HIRE_DATE) from EMPLOYEES;

-- MIN
select min(SALARY) from EMPLOYEES;
select min(all SALARY) from EMPLOYEES;
select min(COMMISSION_PCT) from EMPLOYEES;
select min(distinct COMMISSION_PCT) from EMPLOYEES;
select min(HIRE_DATE) from EMPLOYEES;
