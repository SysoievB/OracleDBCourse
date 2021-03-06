-- LOWER
select FIRST_NAME, lower(FIRST_NAME) from EMPLOYEES;
select lower('HELLO, how Are YOU?') lower_case from DUAL;

-- UPPER
select FIRST_NAME, upper(FIRST_NAME) from EMPLOYEES;
select upper('HELLO, how Are YOU?') upper_case from DUAL;

-- INITCAP
select FIRST_NAME, initcap(FIRST_NAME) from EMPLOYEES;
select initcap('HELLO, how Are YOU?') initcap_case from DUAL;

-- CONCAT
select FIRST_NAME, concat(FIRST_NAME,LAST_NAME) from EMPLOYEES;
select concat('HELLO, how Are YOU?', ' NAME') concat_func from DUAL;
select concat('today is ', sysdate) from DUAL;
select concat('Hello ', concat(' my',' friend')) concat_func from DUAL;

-- LENGTH
select FIRST_NAME, length(FIRST_NAME) from EMPLOYEES;
select length('HELLO, how Are YOU?') length from DUAL;
select FIRST_NAME from EMPLOYEES order by length(FIRST_NAME);

-- LPAD & RPAD
select lpad('Anna', 7, '#') from DUAL;
select rpad('Anna', 7, '#') from DUAL;

-- TRIM
select trim(trailing 'q' from 'qqqqannaqqqqqqq') from DUAL;
select trim(leading 'q' from 'qqqqannaqqqqqqq') from DUAL;
select trim(both 'q' from 'qqqqannaqqqqqqq') from DUAL;

-- INSTR
select * from EMPLOYEES where instr(JOB_ID, 'PROG') = 4;

-- SUBSTR
select EMAIL, substr(EMAIL, 4, 2) from EMPLOYEES;
select substr('hello, how are you?', 7 ,5) from DUAL;

-- REPLACE
select replace('hello, how are you?', 'how' ,'&&&&') from DUAL;
select replace('hello, how are you?', 'how') from DUAL;

-- ROUND
select round(132.32342, 1) from DUAL;
select round(132.32) from DUAL;
select round(132232, -2) from DUAL;

-- TRUNC
select trunc(132.32582, 1) from DUAL;
select trunc(132.72) from DUAL;
select trunc(13277, -1) from DUAL;

-- MOD
select mod(132.32582, 1) from DUAL;
select mod(13277, 2) from DUAL;

-- DATE
select * from NLS_SESSION_PARAMETERS where PARAMETER = 'NLS_DATE_FORMAT';

-- SYSDATE
select sysdate from DUAL;
select sysdate - HIRE_DATE from EMPLOYEES;

-- MONTHS_BETWEEN
select EMPLOYEE_ID, months_between(END_DATE, START_DATE) from JOB_HISTORY;

-- ADD_MONTHS
select add_months(sysdate, 4) from DUAL;

-- NEXT_DAY
select next_day(sysdate, 1) from DUAL;
select next_day(sysdate, '??????????????') from DUAL;

-- LAST_DAY
select last_day(sysdate) from DUAL;

-- ROUND(FOR DATE)
select round(sysdate, 'YYYY') from DUAL;

-- TRUNC(FOR DATE)
select trunc(sysdate, 'YYYY') from DUAL;
