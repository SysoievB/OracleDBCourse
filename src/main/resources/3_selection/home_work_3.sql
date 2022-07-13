/*
1. Получите список всех сотрудников с именем David.
2. Получите список всех сотрудников, у которых job_id равен FI_ACCOUNT.
3. Выведите информацию о имени, фамилии, з/п и номере департамента
для сотрудников из 50го департамента с зарплатой, большей 4000.
4. Получите список всех сотрудников, которые работают или в 20м, или в
30м департаменте.
5. Получите список всех сотрудников, у которых вторая и последняя буква
в имени равна 'a'.
6. Получите список всех сотрудников из 50го и из 80го департамента, у
которых есть бонус(комиссионные). Отсортируйте строки по email
(возрастающий порядок), используя его порядковый номер.
7. Получите список всех сотрудников, у которых в имени содержатся
минимум 2 буквы 'n'.
8. Получить список всех сотрудников, у которых длина имени больше 4
букв. Отсортируйте строки по номеру департамента (убывающий
порядок) так, чтобы значения “null” были в самом конце.
9. Получите список всех сотрудников, у которых зарплата находится в
промежутке от 3000 до 7000 (включительно), нет бонуса
(комиссионных) и job_id среди следующих вариантов: PU_CLERK,
ST_MAN, ST_CLERK.
10.Получите список всех сотрудников у которых в имени содержится
символ '%'.
11.Выведите информацию о job_id, имене и з/п для работников, рабочий
id которых больше или равен 120 и job_id не равен IT_PROG.
Отсортируйте строки по job_id (возрастающий порядок) и именам
(убывающий порядок).
*/

-- 1
select * from EMPLOYEES where FIRST_NAME = 'David';
-- 2
select *  from EMPLOYEES where JOB_ID = 'FI_ACCOUNT';
-- 3
select FIRST_NAME, LAST_NAME, SALARY, DEPARTMENT_ID from EMPLOYEES where DEPARTMENT_ID = 50 and SALARY > 4000;
-- 4
select * from EMPLOYEES where DEPARTMENT_ID = 20 or DEPARTMENT_ID = 30;
-- 5
select * from EMPLOYEES where FIRST_NAME like '_a%a';
-- 6
select *  from EMPLOYEES where (DEPARTMENT_ID = 50 or DEPARTMENT_ID = 80) and COMMISSION_PCT is not null order by EMAIL asc;
-- 7
select * from EMPLOYEES where FIRST_NAME like '%n%n%';
-- 8
select * from EMPLOYEES where FIRST_NAME like '_____%' order by DEPARTMENT_ID desc nulls last;
-- 9
select * from EMPLOYEES where SALARY between 3000 and 7000 and COMMISSION_PCT is null and JOB_ID in ('PU_CLERK', 'ST_MAN', 'ST_CLERK');
-- 10
select * from EMPLOYEES where FIRST_NAME like '%\%%' escape '\';
-- 11
select JOB_ID, FIRST_NAME, SALARY from EMPLOYEES where EMPLOYEE_ID >= 120 and JOB_ID != 'IT_PROG' order by JOB_ID asc, FIRST_NAME desc;