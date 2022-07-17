-- TO_CHAR(FOR NUMBER)
select to_char('123') from DUAL;
select to_char(18, '99999') from DUAL;
select to_char(18, '099999') from DUAL;
select to_char(18.98, '099999.9999') from DUAL;
select to_char(18.98, '099999D9999') from DUAL;
select to_char(123456677, '099,999,999') from DUAL;
select to_char(123456677, '099G999G999') from DUAL;
select to_char(18, '$0999') from DUAL;
select to_char(18, 'L0999') from DUAL;
select to_char(-18, '999MI') from DUAL;
select to_char(-18, '09999PR') from DUAL;
select to_char(18, 'S09999') from DUAL;

-- TO_CHAR(FOR DATE)
select to_char(sysdate) from DUAL;
select to_char(sysdate, 'Y') from DUAL;
select to_char(sysdate, 'YY') from DUAL;
select to_char(sysdate, 'YYY') from DUAL;
select to_char(sysdate, 'YYYY') from DUAL;
select to_char(sysdate, 'RR') from DUAL;
select to_char(sysdate, 'YEAR') from DUAL;
select to_char(sysdate, 'MM') from DUAL;
select to_char(sysdate, 'MON') from DUAL;
select to_char(sysdate, 'MONTH') from DUAL;
select to_char(sysdate, 'D') from DUAL;
select to_char(sysdate, 'DD') from DUAL;
select to_char(sysdate, 'DDD') from DUAL;
select to_char(sysdate, 'DY') from DUAL;
select to_char(sysdate, 'DAY') from DUAL;
select to_char(sysdate, 'W') from DUAL;
select to_char(sysdate, 'WW') from DUAL;
select to_char(sysdate, 'Q') from DUAL;
select to_char(sysdate, 'CC') from DUAL;
select to_char(sysdate, 'AM') from DUAL;
select to_char(sysdate, 'HH') from DUAL;
select to_char(sysdate, 'MI') from DUAL;
select to_char(sysdate, 'ss') from DUAL;
select to_char(sysdate, 'sssss') from DUAL;
select to_char(sysdate, 'DDTH') from DUAL;
select to_char(sysdate, 'YYYYSP') from DUAL;

-- TO_DATE
select to_date(120322) from DUAL;
select to_date('18-Мар-2023', 'DD-mon-YYYY') from DUAL;

-- TO_NUMBER
select to_number('342') from DUAL;

