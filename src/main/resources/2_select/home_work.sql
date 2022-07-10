/*
1. Выведите всю информацию о регионах.
2. Выведите информацию о имени, id департамента, зарплате и фамилии
для всех работников.
3. Выведите информацию о id работника, электронной почте и дату,
которая была за неделю до трудоустройства для всех работников.
Столбец, который будет содержать дату назовите One week before hire
date .
4. Выведите информацию о работниках с их позициями в формате:
Donald(SH_CLERK) . Назовите столбец our_employees .
5. Выведите список уникальных имён среди работников.
6. Выведите следующую информацию из таблицы jobs:
 job_title,
 выражение в формате: «min = 20080, max = 40000»
, где 20080 – это минимальная з/п, а 40000 – максимальная.
Назовите этот столбец info.
 максимальную з/п и назовите столбец max,
 новую з/п, которая будет называться new_salary и вычисляться по
формуле: max_salary*2-2000.
7. Выведите на экран предложение «Peter's dog is very clever», используя
одну из двух техник работы с одинарными кавычками.
8. Выведите на экран предложение «Peter's dog is very clever», используя,
отличную от предыдущего примера, технику работы с одинарными
кавычками.
9. Выведите на экран количество минут в одном веке (1 год = 365.25
дней).
*/
-- 1
select * from REGIONS;
-- 2
select FIRST_NAME, DEPARTMENT_ID, SALARY, LAST_NAME from EMPLOYEES;
-- 3
select EMPLOYEE_ID, EMAIL, HIRE_DATE-7 as "One week before hire date" from EMPLOYEES;
-- 4
select FIRST_NAME||'('||JOB_ID||')' our_employees from EMPLOYEES;
-- 5
select distinct FIRST_NAME from EMPLOYEES;
-- 6
select JOB_TITLE,
       'min = '||MIN_SALARY||', max = '||MAX_SALARY as info,
       MAX_SALARY as max,
       MAX_SALARY*2-2000 as new_salary
from JOBS;
-- 7
select 'Peter''s dog is very clever' as text from DUAL;
-- 8
select q'<Peter's dog is very clever>' as another_text from DUAL;
-- 9
select 100*365.25*24*60 as "minutes per century" from DUAL;