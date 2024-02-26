-- ex08_aggregation_function.sql

/*

    함수, Function 
    1. 내장 함수(Built-in Function)
    2. 사용자 정의 함수(User Function) > ANSI-SQL(X), PL/SQL(O)
    
    
    
    집계 함수, Aggregation Function (*****************)
    - Java > count(), sum(), max(), min(), average()
    - 아주 쉬움 > 나중에 하는 수업과 결합 > 꽤 어려움;;
    
    1. count()
    2. sum()
    3. avg()
    4. max()
    5. min()
    
    1. count()
    - 결과테이블의 레코드 수를 반환한다. 
    - number count(컬럼명)
    

*/

-- tblCountry 
select * from tblCountry;
select count(*) from tblCountry;
select count(name) from tblCountry;
select count(capital) from tblCountry;
select count(population) from tblCountry;


-- 연락처가 있는 직원수 ?
select count(*) from tblInsa where tel is not null;

-- 연락처가 없는 직원수?
select count(*) from tblInsa where tel is null;

-- 전체 직원수 - 연락처가 있는 직원수
select count(*) - count(tel) from tblInsa;

-- tblInsa. 몇개의 부서가 있나요?
select count(buseo) from tblInsa;
select count(distinct buseo) from tblInsa;



-- tblComedian, 남자수 여자수 
select * from tblComedian;
    
select count(*) from tblComedian where gender = 'm';
select count(*) from tblComedian where gender = 'f';

-- 남자와 여자수를 1개의 테이블로 가져오기 
select 
    count(
    case
        when gender = 'm' then 1 
    end) as male,
    count(case
        when gender = 'f' then 1 
    end) as female
from tblComedian;


-- tblInsa. 기획부 총무부 개발부 나머지 부서  > 1개 테이블 
select 
    count(case 
        when buseo = '기획부' then 1
    end) as 기획부,
    count(case 
        when buseo = '총무부' then 2
    end) as 총무부,
    count(case 
        when buseo = '개발부' then 3
    end) as 개발부,
    count(
        when buseo not in ('기획부','충무부','개발부') then 1
    end) as 나머지 
    count(*)as 총인원수 
from tblInsa;

/*

    2. Sum()
    - 해당 컬럼의 합을 구한다.
    - number sum(컬럼명)
    - 숫자형 적용 가능 

*/

select sum(population), sum(area) from tblCountry;

select sum(ibsadate) from tblInsa;

select 
    sum(basicpay)as "지출 급여 합 ",
    sum(sudang) as "지출 수당 합",
    sum(basicpay)+sum(sudang) as "총 지출",
    sum(basicpay + sudang)as"총 지출"
from tblInsa


-- avg

-- tblInsa. 평균급여?
select sum(basicpay)/60 from tblInsa;
select sum(basicpay)/count(*) from tblInsa;
select avg(basicpay) from tblInsa;


-- tblCountry. 평균 인구수
select sum(population)/count(*) from tblCountry;
select avg(population) from tblCountry;

-- 회사 > 성과급 지급 > 출처 > 1팀 공로 ~
-- 1. 균등 지급 > 총지급액 / 모든 직원수 = sum() / count(*)
-- 2. 차등 지급 > 총지급액 / 1팀직원수 = sum() / count(1팀) = avg()

select avg(naver) from tblInsa;


-- min max

select max(basicpay), min(basicpay) from tblInsa;
select max(name), mine(name) from tblInsa;
select max(ibsadate), min(ibsadate) from tblInsa;

select 
    count(*) as 직원수,
    sum(basicpay) as 총급여합,
    avg(basicpay) as 평균급여,
    max(basicpay) as 최고급여,
    min(basicpay) as 최저급여,
from tblInsa;

-- 요구사항] 평균 급여보다 더 많이 받는 직원들?
-- where절에는 집계 함수를 사용할 수 없다. 
select avg(basicpay) from tblInsa; 
select * from tblInsa where basicapy >= avg(basicpay);

















