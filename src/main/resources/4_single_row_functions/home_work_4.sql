/*
1. Получите список всех сотрудников, у которых длина имени больше 10
букв.
2. Получите список всех сотрудников, зарплата которых кратна 1000.
3. Выведите телефонный номер и первое 3х значное число телефонного
номера сотрудника, если его номер представлен в формате
ХХХ.ХХХ.ХХХХ .
4. Получите список всех сотрудников, у которых последняя буква в имени
равна 'm' и длина имени больше 5ти.
5. Выведите дату следующей пятницы.
6. Получите список всех сотрудников, которые работают в компании
больше 12 лет и 6ти месяцев (150 месяцев).
7. Выведите телефонный номер, заменив в значении PHONE_NUMBER все
'.' на '-'.
8. Выведите имя, email, job_id для всех работников в формате:
STEVEN sking Ad_Pres
9. Выведите информацию о имени работника и его з/п, не используя
символ || , в таком виде: Steven24000
10.Выведите информацию о дате приёма сотрудника на работу,
округлённой дате приёма на работу до месяца и первом дне года
приёма на работу.
11.Выведите информацию о имени и фамилии всех работников. Имя
должно состоять из 10 символов и если длина имени меньше 10, то
дополняйте до 10 символов знаком $. Фамилия должна состоять из 15
символов и если длина фамилии меньше 15, то перед фамилией
ставьте столько знаков ! сколько необходимо.
12.Выведите имя сотрудника и позицию второй буквы ‘a’ в его имени.
13.Выведите на экран текст '!!!HELLO!! MY FRIEND!!!!!!!!' и тот же текст, но
без символа восклицательный знак в начале и конце текста.
14.Выведите информацию о:
 з/п работника,
 з/п умноженной на коэффициент 3.1415 ,
 округлённый до целого значения вариант увеличенной з/п-ты,
 целое количество тысяч из увеличенной з/п.
15.Выведите информацию о:
 дате приёма сотрудника на работу,
 дате, которая была через пол года, после принятия сотрудника на
работу,
 дате последнего дня в месяце принятия сотрудника на работу
*/

-- 1
select * from EMPLOYEES where length(FIRST_NAME) > 10;

-- 2
select * from EMPLOYEES where mod(salary, 1000) = 0;

-- 3
select PHONE_NUMBER, substr(PHONE_NUMBER, 1, 3) from EMPLOYEES where PHONE_NUMBER like '___.___.____';

-- 4
select * from EMPLOYEES where FIRST_NAME like '%m' and length(FIRST_NAME) > 5;

-- 5
select next_day(sysdate, 'Пятница') as "Next Friday" from dual;

-- 6
select *  from EMPLOYEES where months_between(SYSDATE, HIRE_DATE) > 150;

-- 7
select replace(PHONE_NUMBER, '.', '-') from EMPLOYEES;

-- 8
select upper(FIRST_NAME), lower(EMAIL), initcap(JOB_ID) from EMPLOYEES;

-- 9
select concat(FIRST_NAME, SALARY) from EMPLOYEES;

-- 10
select HIRE_DATE, round(HIRE_DATE, 'MM'), trunc(HIRE_DATE, 'YYYY') from EMPLOYEES;

-- 11
select rpad(FIRST_NAME, 10, '$'), lpad(LAST_NAME, 15, '!') from EMPLOYEES;

-- 12
select FIRST_NAME, instr(FIRST_NAME, 'a', 1, 2) from EMPLOYEES;

-- 13
select '!!!HELLO!! MY FRIEND!!!!!!!!', trim(both '!' from '!!!HELLO!! MY FRIEND!!!!!!!!') from DUAL;

-- 14
select SALARY, SALARY*3.1415, round(SALARY*3.1415), round(SALARY*3.1415, -3)/1000 from EMPLOYEES;

-- 15
select HIRE_DATE, add_months(HIRE_DATE, 6), last_day(HIRE_DATE) from EMPLOYEES;