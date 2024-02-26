--ex03_select.sql

/*

    SQL
    - Query
    - 시퀄(SEQUL)
    
    SELECT문 
    - DML, DQL
    - SQL은 SELECT로 시작해서 SELECT로 끝난다.
    - CRUD 
    - 데이터베이스의 테이블로부터 데이터를 가져오는 명령어(읽기,조회)
    
    [WITH <Sub Query>]
    SELECT column_list
    FROM table_name
    [WHERE search_condition]
    [GROUP BY group_by_expression]
    [HAVING search_condition]
    [ORDER BY order_expression [ASC|DESC]]
    
    SELECT column_list -- 원하는 컬럼을 지정 > 해당 컬럼만 가져와라. 
    FROM table_name -- 데이터 소스, 어떤 테이블로부터 데이터를 가져와라  

    각절의 순서 
    2. SELECT 
    1. FROM 





*/

select * --모든 컬럼
from tblType;


-- HR > EMPLOYEES

desc employees;

select * from tblCountry;
select * from tblComedian;
select * from tblDiary;
select * from tblInsa;
select * from tblMen;
select * from tblWomen;
select * from tblTodo;

select * --모든 컬럼
from tblCountry;

--select > 결과 테이블(Result Table, ResultSet)

select name --단일 컬럼
from tblCountry;

select name, capital -- 다중 컬럼 
from tblCountry;

select capital, name 
from tblCountry;

select name, length(name) 
from tblCountry;




















