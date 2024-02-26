--ex09_numerical_function.sql

/*

    숫자 함수 
    - 수학 함수
    - math.XXX()
    
    round()
    - 반올림 함수 
    - number round(컬럼명): 정수 반환
    - number round(컬럼명, 소수이하 자릿수): 실수 반환
    
*/

select round(avg(basicpay)) from tblInsa;
select round(avg(basicpay),1) from tblInsa;

select * from dual; --시스템 테이블 > 1행 테이블(***)

select sysdate from tblInsa where num = 1001; 

select sysdate from dual;

select
    3.5678,
    round(3.5678),
    round(3.5678,1),
    round(3.5678,2),
    round(3.5678,3),
    round(3.5678,0)
from dual;

/*

    floor(), trunc()
    - 절삭 함수 
    - 무조건 내림 함수 
    - number floor(컬럼명)
    - number trunc(컬럼명)
    - number trunc(컬럼명, 소수이하 자릿수)
    
*/

select 
    3.5678,
    floor(3.5678),
    trunc(3.5678),
    round(3.5678)
from dual;

/*

    ceil() -> (floor의 반대)
    - 무조건 올림 함수 
    - 천장
*/

select 
    ceil(3.00000000001),
    floor(3.99999999)
    
from dual;

/*

    mod()
    - 나머지 함수 
    - number mod(피제수, 제수)

*/

select 
    10/3,
    mod(10,3) as 나머지,
    floor(10/3) as 몫
from dual; 

select 
    abs(10), abs(-10),
    power(2,2),power(2,3),power(2,4),
    sqrt(4),sqrt(9),sqrt(16)
from dual;










