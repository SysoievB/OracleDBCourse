/*
1. Используя функции, получите список всех сотрудников у которых в
имени есть буква 'b' (без учета регистра).
2. Используя функции, получите список всех сотрудников у которых в
имени содержатся минимум 2 буквы 'a'.
3. Получите первое слово из имени департамента, для тех
департаментов, у которых название состоит больше, чем из одного
слова.
4. Получите имена сотрудников без первой и последней буквы в имени.
5. Получите список всех сотрудников, у которых в значении job_id после
знака '_' как минимум 3 символа, но при этом это значение после '_' не
равно 'CLERK'.
6. Получите список всех сотрудников, которые пришли на работу в
первый день любого месяца.
7. Получите список всех сотрудников, которые пришли на работу в
2008ом году.
8. Покажите завтрашнюю дату в формате:
Tomorrow is Second day of January
9. Выведите имя сотрудника и дату его прихода на работу в формате:
21st of June, 2007
10.Получите список работников с увеличенными зарплатами на 20%.
Зарплату показать в формате: $28,800.00
11.Выведите актуальную дату (нынешнюю), + секунда, + минута, + час, +
день, + месяц, + год. (Всё это по отдельности прибавляется к
актуальной дате).
12.Выведите имя сотрудника, его з/п и новую з/п, которая равна старой
плюс это значение текста «$12,345.55».
13.Выведите имя сотрудника, день его трудоустройства, а также
количество месяцев между днём его трудоустройства и датой, которую
необходимо получить из текста «SEP, 18:45:00 18 2009».
14.Выведите имя сотрудника, его з/п, а также полную з/п (salary +
commission_pct(%)) в формате: $24,000.00 .
15.Выведите имя сотрудника, его фамилию, а также выражение «different
length», если длина имени не равна длине фамилии или выражение
«same length», если длина имени равна длине фамилии. Не
используйте conditional functions.
16.Выведите имя сотрудника, его комиссионные, а также информацию о
наличии бонусов к зарплате – есть ли у него комиссионные (Yes/No).
17.Выведите имя сотрудника и значение которое его будет
характеризовать: значение комиссионных, если присутствует, если нет,
то id его менеджера, если и оно отсутствует, то его з/п.
18.Выведите имя сотрудника, его з/п, а также уровень зарплаты каждого
сотрудника: Меньше 5000 считается Low level, Больше или равно 5000
и меньше 10000 считается Normal level, Больше или равно 10000
считается High level.
19.Для каждой страны показать регион, в котором она находится: 1-
Europe, 2-America, 3-Asia, 4-Africa . Выполнить данное задание, не
используя функционал JOIN. Используйте DECODE.
20.Задачу №19 решите используя CASE.
21.Выведите имя сотрудника, его з/п, а также уровень того, насколько у
сотрудника хорошие условия :
 BAD: з/п меньше 10000 и отсутствие комиссионных;
 NORMAL: з/п между 10000 и 15000 или, если присутствуют
комиссионные;
 GOOD: з/п больше или равна 15000.
*/

-- 1
select *  from EMPLOYEES where instr(lower(FIRST_NAME), 'b') > 0;

-- 2
select * from EMPLOYEES where FIRST_NAME like '%a%a%';

-- 3
select * from DEPARTMENTS where DEPARTMENT_NAME like '% %';

-- 4
select FIRST_NAME, substr(FIRST_NAME, 2, length(FIRST_NAME) - 2) from EMPLOYEES;

-- 5
select * from EMPLOYEES where substr(JOB_ID, instr(JOB_ID, '_') + 1) != 'CLERK' and JOB_ID like '%\____%' escape '\';

-- 6
select * from EMPLOYEES where to_char(HIRE_DATE, 'DD') = '01';

-- 7
select * from EMPLOYEES where to_char(HIRE_DATE, 'YYYY') = '2008';

-- 8
select to_char(sysdate + 1, 'fm"Tomorrow is "Ddspth "day of" Month') info from DUAL;

-- 9
select FIRST_NAME, to_char(HIRE_DATE, 'fmddth "of" Month, YYYY') from EMPLOYEES;

-- 10
select FIRST_NAME, to_char(SALARY + SALARY * 0.2, '$999,999.00') new_salary from EMPLOYEES;

-- 11
select SYSDATE now,
       sysdate + (1/24/60/60) plus_second,
       sysdate + (1/24/60) plus_minute,
       sysdate + (1/24) plus_hour,
       sysdate + 1 plus_day,
       sysdate + 1 * 30 plus_month,
       sysdate + 1 * 365 plus_year
from DUAL;

-- 12
select FIRST_NAME, SALARY, SALARY + to_number('$12,345.55','$999,999.99') new_salary from EMPLOYEES;

-- 13
select FIRST_NAME, HIRE_DATE, months_between(to_date('СЕН, 18:45:00 18 2009', 'MON, HH24:MI:SS DD YYYY'), HIRE_DATE) from EMPLOYEES;

-- 14
select FIRST_NAME, SALARY, to_char(SALARY + SALARY * NVL(COMMISSION_PCT, 0), '$999,999.99') from EMPLOYEES;

-- 15
select FIRST_NAME, LAST_NAME,nvl2(nullif(length(FIRST_NAME), length(LAST_NAME)),'different length', 'same length') from EMPLOYEES;

-- 16
select FIRST_NAME, COMMISSION_PCT, nvl2(COMMISSION_PCT, 'Yes', 'No') from EMPLOYEES;

-- 17
select FIRST_NAME, coalesce(COMMISSION_PCT, MANAGER_ID, SALARY) from EMPLOYEES;

-- 18
select FIRST_NAME, SALARY,
       case
           when SALARY < 5000 then 'Low level'
           when SALARY >= 5000 and SALARY < 10000 then 'Normal level'
           when SALARY >= 10000 then 'High level'
       end salary_case
from EMPLOYEES;

-- 19
select COUNTRY_NAME, decode(REGION_ID,
    1, '1-Europe',
    2, '2-America',
    3, '3-Asia',
    4, '4-Africa') regions from COUNTRIES;

-- 20
select COUNTRY_NAME,
       case
           when REGION_ID = 1 then '1-Europe'
           when REGION_ID = 2 then '2-America'
           when REGION_ID = 3 then '3-Asia'
           when REGION_ID = 4 then '4-Africa'
           end regions
from COUNTRIES;

-- 21
select FIRST_NAME, SALARY,
       case
           when SALARY < 10000 and COMMISSION_PCT is null then 'BAD'
           when SALARY between 10000 and 15000 or COMMISSION_PCT is not null then 'NORMAL'
           when SALARY > 15000 then 'GOOD'
       end
conditions from EMPLOYEES;
