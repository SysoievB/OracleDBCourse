-- NVL
select nvl(null, 12) from DUAL;
select nvl(null, null) from DUAL;
select FIRST_NAME, nvl(COMMISSION_PCT, 0) from EMPLOYEES;

-- NVL2
select nvl2(17 ,18, 19) from DUAL;
select nvl2(null ,18, 19) from DUAL;
select FIRST_NAME, nvl2(COMMISSION_PCT, COMMISSION_PCT,0) from EMPLOYEES;

-- NULLIF
select nullif(18 ,18) from DUAL;
select nullif(17 ,18) from DUAL;
select COUNTRY_ID, COUNTRY_NAME, nvl2(nullif(COUNTRY_ID, upper(substr(COUNTRY_NAME, 1, 2))), '
no matches', 'there are matches')  from COUNTRIES;

-- COALESCE
select coalesce(null, 1) from DUAL;
select coalesce(2, 1) from DUAL;
select coalesce(null, null, 1) from DUAL;
select coalesce(null, null, null, 1) from DUAL;
select coalesce(null, null, null, 'ok') from DUAL;