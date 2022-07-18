-- DECODE
select COMMISSION_PCT, decode(COMMISSION_PCT, null, 0) from EMPLOYEES;

-- CASE(simple)
select case 3 * 4
           when 12 then 100
           end
from DUAL;
select case 3 * 4
           when 12 then 'twelve'
           end
from DUAL;
select case 3 * 4
           when 11 then 'eleven'
           when 12 then 'twelve'
           when 24/2 then 'twelve2'
           end
from DUAL;
select case 3 * 5
           when 11 then 'eleven'
           when 12 then 'twelve'
           when 24/2 then 'twelve2'
           else 'endind'
           end
from DUAL;

-- CASE(searched)
select case
           when 10*1=11 then 'eleven'
           when 'ok'='ok' then 'twelve'
           when 24/2=12 then 'twelve2'
           else '!!!'
           end
from DUAL;