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
