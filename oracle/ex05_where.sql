--ex05_where.sql
/*
    
    
    
    [WITH <Sub Query>]
    SELECT column_list
    FROM table_name
    [WHERE search_condition]
    [GROUP BY group_by_expression]
    [HAVING search_condition]
    [ORDER BY order_expression [ASC|DESC]]

    SELECT 컬럼리스트  3. 컬럼 지정 (보고 싶은 컬럼만 가져오기)
    FROM 테이블        1. 테이블 지정 
    WHERE 검색조건;    2. 조건 지정 (보고 싶은 행만 가져오기) > Selection
    
    where절
    - 레코드(행)을 검색한다. 
    - 원하는 레코드만 추출 > 결과셋 생성 











*/


select name, height
from tblMen
where height >= 180;

select 
    *
from tblCountry
    where capital <>'서울'; 


--tblComedian 
--1. 몸무게가 60KG 이상이고, 키가 170cm 미만인 사람을 가져오시오.
select *
from tblComedian
where weight >=60 and height <170;


--2. 몸무게가 70KG 이하인 여자만 가져오시오 
select *
from tblComedian
where weight <=70 and Gender='f';



--tblInsa
--3. 부서가 '개발부'이고, 급여가 150만원 이상 받는 직원을 가져오시오.
select  * from tblInsa
    where buseo = '개발부' and basicpay >= 1500000;


--4. 급여 + 수당을 합한 금액이 200만원 이상 받는 직원을 가져오시오. 

select * from tblInsa
    where basicpay + sudang >= 2000000;


/*

    between 
    - where 절에서 사용 > 조건으로 사용 
    - 컬럼명 between 최소값 and 최대값 
    - qjadnl whrjs 
    - 가독성 향상 
    - 최소값 최대값 
    

*/
select * from tblInsa where basicpay >= 1000000 and basicpay <= 1200000;
select * from tblInsa where basicpay <= 1000000 and basicpay >= 1200000;
select * from tblInsa whwere basicpay between 1000000 and 1200000;

/*
    Query 실행과정 
    
    SQL 실행과정 
    
    [사람]<->[SQL Developer]<->[Oracle Database]<->[Table(Data)]
    
    1. 접속 
        - 호스트명 : 접속할 오라클 서버의 IP 주소(or 도메인명) > "localhost"
        - 포트번호 : "1521"
        - SID : "xe" 
        - 사용자명 : "hr"
        - 암호 : "java1234"
        
    2. SQL 작성 
        - "select * from tblCountry;" 작성 
        - 실행 > Ctrl + Enter > 해당 SQL를 오라클 서버에게 전송하는 역할(***)
        
    3. 오라클 서버에서 
        - 전달받은 SQL을 수신 
        - 구문 분석(파싱)
        - 컴파일 
        - SQL 실행 > 데이터 읽기 > 결과셋(서버 메모리)
        - 결과셋 > 클라이언트에게 반환 
    
    4. SQL Developer에서 
        - 결과셋 > 출력 
        
        
    
    
*/
select * from tblcountry 

-- 비교 연산
-- 1. 숫자형  
select * from tblInsa where name >='이순신'; --name.compareTo('이순신')
select * from employees where first_name >= 'J' and first_name <='L';

desc tblInsa

select * from tblInsa where ibsadate > '2000-01-01';

select * from tblInsa where ibsadate >= '2010-01-01' and ibsadate <= '2010-12-31';
select * from tblInsa where ibsadate between '2010-01-01' and '2010-12-31';

/*

    in 
    - where 절에서 사용 
    - 열거형 조건 
    - 컬럼명 in (값,값,값)
    - 가독성 향상 
    
    
*/

-- tblInsa 개발부 총무부 
select * from tblInsa 
    where buseo = '개발부' or buseo = '총무부' or buseo = '홍보부';
    
select * from tblInsa
    where buseo in ('개발부','총무부','홍보부');

select * from tblInsa 
    where city in ('서울','인천')
        and jikwi in ('과장','부장')
        and basicpay between 2500000 and 3000000;

/*

    like 
    - where절에서 사용 > 조건으로 사용 
    - 패턴 비교 
    - 컬럼명 like '패턴 문자열'
    - 정규식의 초간단 버전 
    
    패턴 문자열의 구성 요소 
    1. _ : 임의의 문자 1개(.)
    2. % : 임의 문자 N개. 0 ~ 무한대(.*)
    
*/

-- 김OO
select name from tblInsa;
select name from tblInsa where name like '김__';
select name from tblInsa where name like '_길_';
select name from tblInsa where name like '__수';

select * from employees where first_name like 'S_____';

select name from tblInsa where name like '김%';
select name from tblInsa where name like '%김';
select name from tblInsa where name like '%수%';
select * from employees where first_name like 'S%';

select * from tblInsa where ssn like '%-2%';


/*
    
    RDBMS에서의 null 
    - 컬럼값(셀)이 비어있는 상태 
    - null 상수 제공 
    - 대부분의 언어는 null은 연산의 대상이 될 수 없다.(***********)
    
    
    null 조건 
    - where절에서 사용 
    - 컬럼명 is null
    - 컬럼명 is not null
    
*/

-- 인구수가 미기재된 나라?
select * from tblCountry where population = null;
select * from tblCountry where population is null;

-- 인구수가 기재된 나라?
select * from tblCountry where population <> null;
select * from tblCountry where not population is null;
select * from tblCountry where population is not null;

-- 연락처가 없는 직원?
select * from tblInsa where tel is null;
select * from tblInsa where tel is not null;

-- 실행 완료한 일?
select * from tblTodo;
select * from tblTodo where completedate is not null;

-- 실행 미완료한 일?
select * from tblTodo where completedate is null;






















