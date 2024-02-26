--ex07_order.sql

/*

    [WITH <Sub Query>]
    SELECT column_list
    FROM table_name
    [WHERE search_condition]
    [GROUP BY group_by_expression]
    [HAVING search_condition]
    [ORDER BY order_expression [ASC|DESC]];
    
    SELECT 컬럼리스트  3. 컬럼 지정 (보고 싶은 컬럼만 가져오기)
    FROM 테이블        1. 테이블 지정 
    WHERE 검색조건;    2. 조건 지정 (보고 싶은 행만 가져오기) > Selection
    ORDER BY 정렬기준; 4. 정렬해서 

    order by 절 
    - order by 컬럼명 
    


*/

select * from tblInsa;
select * from tblInsa order by name asc;
select * from tblInsa order by basicpay desc;
select * from tblInsa order by jikwi desc; -- 1차 정렬
select * from tblInsa order by jikwi desc, buseo desc; -- 2차 정렬
select * from tblInsa order by jikwi desc, buseo desc,basicpay asc; -- 3차 정렬

-- 비교 > 숫자, 문자, 날짜 > 정렬 가능 
select * from tblInsa order by basicpay desc; -- 숫자
select * from tblInsa order by name asc; -- 문자 
select * from tblInsa order by ibsadate desc; -- 날짜

-- SQL > 첨자가 1부터 시작한다. 
select 
    num, name, buseo, jikwi
from tblInsa
    order by 1 desc; -- 컬럼의 순서 
    

-- 가공된 값을 정렬 기준으로 사용 
-- 급여순으로 정렬 
select * from tblInsa order by basicpay desc; --basicpay 
select * from tblInsa order by basicpay + sudang desc; -- basicpay + sudang


-- 직위순으로 정렬: 
select * from tblInsa order by jikwi; 

select 
    name, jikwi,
    case 
        when jikwi = '부장' then 1 
        when jikwi = '과장' then 2
        when jikwi = '대리' then 3 
        when jikwi = '사원' then 4
    end
from tblInsa
    order by 3 asc;


select 
    name, jikwi,
    case 
        when jikwi = '부장' then 1 
        when jikwi = '과장' then 2
        when jikwi = '대리' then 3 
        when jikwi = '사원' then 4
    end as jikwiseq
from tblInsa
    order by jikwiseq asc;
    

select 
    name, jikwi
from tblInsa
    order by case 
        when jikwi = '부장' then 1 
        when jikwi = '과장' then 2
        when jikwi = '대리' then 3 
        when jikwi = '사원' then 4
    end asc;

    
-- 직원: 남자 > 여자순으로 
select 
    name, ssn,
    case
        when ssn like '%-1%' then '남자'
        when ssn like '%-2%' then '여자'
    end as gender
from tblInsa
    order by gender asc;




















