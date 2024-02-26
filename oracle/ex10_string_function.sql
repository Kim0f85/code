--ex10_string_function.sql

/*

    문자열 함수 
    
    대소문자 변환
    - upper(), lower(), initcap()
    - var





*/


select 
    first_name,
    upper(first_name),
    lower(first_name),
    initcap(first_name)
from employees;


select 
    'abc', 
    initcap('abc'),
    initcap('ABC')
from dual;


-- 이름(first_name)에 'an' 포함된 직원? > 대소문자 구분없이

select 
    first_name
from employees
    --where first_name like '%an%' or first_name like '%AN%' or;
    where upper(first_name) like '%AN%';

/*

    문


*/

select 
    name,
    substr(name,1,3)
from tblCountry;

--tblInsa > 성씨 count

select count(*) from tblInsa where substr(name, 1, 1) = '김';
select count(*) from tblInsa where substr(name, 1, 1) = '이';
select count(*) from tblInsa where substr(name, 1, 1) = '박';
select count(*) from tblInsa where substr(name, 1, 1) = '최';
select count(*) from tblInsa where substr(name, 1, 1) = '정';

select 
    count(case
        when substr(name,1,1) = '김'then 1 
    end)as 김,
    count(case
        when substr(name,1,1) = '이'then 1 
    end)as 이,
    count(case
        when substr(name,1,1) = '박'then 1 
    end)as 박,
    count(case
        when substr(name,1,1) = '최'then 1 
    end)as 최,
    count(case
        when substr(name,1,1) = '정'then 1 
    end)as 정,
    count(case
        when substr(name,1,1) not in ('김','이','박','최','정') then 1
    end) as 나머지
from tblInsa;




/*

    문자열 길이 
    - length()
    - number length(컬럼명)
    
*/

-- 컬럼 리스트에서 사용
select name, length(name) from tblCountry;

--조건절에서 사용 
select name, length(name) from tblCountry
    where length(name) > 3;

select name, length(name)  as length 
from tblCountry
    where length(name) > 3;

select name, length(name)  as length 
from tblCountry
where length(name) > 3
order by length desc;

--정렬에서 사용
select name, length(name)  as length from tblCountry
order by length desc;

select name, ssn from tblInsa;

select name, ssn, substr(ssn,8,1) from tblInsa; --컬럼 리스트
select name, ssn from tblInsa where substr(ssn,8,1) =1; -- 조건결
select name, ssn from tblInsa order by substr(ssn,8,1) asc;-- 정렬


/*

    문자열 검색 
    - instr()
    - 검색어의 위치를 반환
    - number instr(컬럼명, 검색어)
    - number instr(컬럼명, 검색어, 시작위치)
    - number instr(컬럼명, 검색어, 시작위치, -1) --lastIndexOf
    - 못찾으면 0을 반환 
    
*/

select 
    '안녕하세요. 홍길동님',
    instr('안녕하세요. 홍길동님', '홍길동') as r1,
    instr('안녕하세요. 홍길동님', '아무개') as r2,
    instr('안녕하세요. 홍길동님, 홍길동님', '홍길동') as r3
   
from dual;

/*

    패딩 
    - lpad(), rpad()
    - left padding, right padding 
    - varchar2 lpad(컬럼명, 개수, 문자)
    - varchar2 ㄱpad(컬럼명, 개수, 문자)

*/

select 
    lpad('a',5),--    a
    lpad('a',5,'b'),
    lpad('aa',5,'b'),
    lpad('aaa',5,'b'),
    lpad('aaaa',5,'b'),
    lpad('aaaaa',5,'b'),
    lpad('aaaaaa',5,'b')

from dual;


/*

    곡백 제거
    - trim(), ltrim(), rtrim()
    - varchar2 trim(컬럼명)
    - 이하동문

*/

select 

from dual;


/*

    문자열 치환
    - replace()
    - varchar2 replace(컬럼명, 찾을 문자열 바꿀 문자)
    
    -regexp_replace(): 정규표현식 지원 
    
*/


select 
    replace('홍길동','홍','김'),
    replace('홍길홍','홍','김')

from dual


select 
    name, 
    regexp_replace(name,'김[가-힝]{2}', '대치어'),
    tel,
    regexp_replace(tel,'(\d{3})-(\d{4})-\d{4}','\1-\2-XXXX'),
    regexp_replace(tel,'(\d{3}-\d{4})-\d{4}','\1-XXXX')

from tblInsa;


/*

    문자열 치환
    - decode()
    - replace()와 유사 
    - varchar2 decode(컬럼명, 찾을 문자열, 바꿀 문자열)
    - varchar2 decode(컬럼명, 찾을 문자열, 바꿀 문자열,찾을 문자열, 바꿀 문자열)


*/

-- tblComedian 성별 > 남자, 여자 
select 
    gender,
    case
        when gender = 'm' then '남자'
        when gender = 'f' then '여자'
    end as g1,
    replace(replace(gender,'m','남자'), 'f', '여자') as g2,
    decode(gender,'m','남자','f','여자') as g3
from tblComedian;


select 
    replace('자바 코드','자바','Java'),
    decode('자바 코드','자바','Java')
from dual;


-- tblComedian. 남자수 ? 여자수 ?
select 
    count(case 
        when gender = 'm' then 1
    end) as m1,
    count(case
        when gender = 'f' then 1 
    end) as m2,
    count(decode(gender,'m',1)) as m2,
    count(decode(gender,'f',1)) as f2
from tblComedian;


-- between, in 사용 > 컴파일 > 연산자 변환 













