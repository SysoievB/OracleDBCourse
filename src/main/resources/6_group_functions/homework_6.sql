/*
1. Получить репорт по department_id с минимальной и максимальной
зарплатой, с самой ранней и самой поздней датой прихода на работу и
с количеством сотрудников. Сортировать по количеству сотрудников
(по убыванию).
2. Выведите информацию о первой букве имени сотрудника и количество
имён, которые начинаются с этой буквы. Выводить строки для букв, где
количество имён, начинающихся с неё больше 1. Сортировать по
количеству.
3. Выведите id департамента, з/п и количество сотрудников, которые
работают в одном и том же департаменте и получают одинаковую
зарплату.
4. Выведите день недели и количество сотрудников, которых приняли на
работу в этот день.
5. Выведите id департаментов, в которых работает больше 30
сотрудников и сумма их з/п-т больше 300000.
6. Из таблицы countries вывести все region_id, для которых сумма всех
букв их стран больше 50ти.
7. Выведите информацию о job_id и округленную среднюю зарплату
работников для каждого job_id.
8. Получить список id департаментов, в которых работают сотрудники
нескольких (>1) job_id.
9. Выведите информацию о department, job_id, максимальную и
минимальную з/п для всех сочетаний department_id - job_id, где
средняя з/п больше 10000.
10.Получить список manager_id, у которых средняя зарплата всех его
подчиненных, не имеющих комиссионные, находится в промежутке от
6000 до 9000.
11.Выведите округлённую до тысяч (не тысячных) максимальную зарплату
среди всех средних зарплат по департаментам
*/

-- 1
select DEPARTMENT_ID,
       min(SALARY),
       max(SALARY),
       min(HIRE_DATE),
       max(HIRE_DATE),
       count(*)
from EMPLOYEES group by DEPARTMENT_ID
order by count(*) desc;

-- 2
select substr(FIRST_NAME, 1, 1),
       count(*)
from EMPLOYEES
group by substr(FIRST_NAME, 1, 1)
having count(*) > 1
order by 2;

-- 3
select DEPARTMENT_ID, SALARY,
       count(*)
from EMPLOYEES
group by DEPARTMENT_ID, SALARY;

-- 4
select to_char(HIRE_DATE, 'Day'),
       count(*)
from EMPLOYEES
group by to_char(HIRE_DATE, 'Day');

-- 5
select DEPARTMENT_ID
from EMPLOYEES
group by DEPARTMENT_ID
having count(*) > 30 and sum(SALARY) > 300000;

-- 6
select REGION_ID
from COUNTRIES
group by REGION_ID
having sum(length(COUNTRY_NAME)) > 50;

-- 7
select JOB_ID, round(avg(SALARY)) from EMPLOYEES group by JOB_ID;

-- 8
select DEPARTMENT_ID
from EMPLOYEES
group by DEPARTMENT_ID
having count(distinct JOB_ID) > 1;

-- 9
select DEPARTMENT_ID,
       JOB_ID,
       max(SALARY),
       min(SALARY)
from EMPLOYEES
group by DEPARTMENT_ID, JOB_ID
having avg(SALARY) > 10000;

-- 10
select MANAGER_ID
from EMPLOYEES
where COMMISSION_PCT is null
group by MANAGER_ID
having avg(SALARY) between 6000 and 9000;

-- 11
select round(max(SALARY), -3)
from EMPLOYEES
group by DEPARTMENT_ID;