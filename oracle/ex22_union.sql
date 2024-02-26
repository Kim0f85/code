-- ex22_union.sql

/*

    관계 대수 연산 
    1. 셀렉션 > select where 
    2. 프로젝션 > select column
    3. 조인 
    4. 합집합 (union), 차집합(), 교집합 

    유니온, union
    - 테이블과 테이블을  합치는 연산 
    - 스키마가 동일한 결과셋끼리 가능 

*/

select * from tblMen 
union
select * from tblWomen;


select * from tblInsa
union
select * from tblTodo;

select name, ibsadate from tblInsa
union
select title, adddate from tblTodo;

-- 회사 > 게시판 > 부서별 게시판 
select * from 영업부게시판;
select * from 총무부게시판;
select * from 개발부게시판;

-- 사장님 > 모든 부서의 게시판 글 > 한번에 열람 
select * from 영업부게시판
union
select * from 총무부게시판
union
select * from 개발부게시판;

-- 야구선수 > 공격수, 수비수 
select * from 공격수;
select * from 수비수;

select 컬럼리스트 from 공격수
union
select 컬럼리스트 from 수비수;

select * from 
    (select * from 1232453
    union




create table tblAAA(
    name varchar2(30) not null,
    color varchar2(30) not null
);

create table tblBBB(
    name varchar2(30)not null,
    color varchar2(30) not null
);

insert into tblAAA values ('강아지','검정');
insert into tblAAA values ('고양이','노랑');
insert into tblAAA values ('토끼','갈색');
insert into tblAAA values ('거북이','녹색');
insert into tblAAA values ('강아지','회색');

insert into tblBBB values ('강아지','검정');
insert into tblBBB values ('고양이','노랑');
insert into tblBBB values ('호랑이','주황');
insert into tblBBB values ('사자','회색');
insert into tblBBB values ('고양이','검정');

select * from tblAAA
union
select * from tblBBB;

-- union all > 중복 허용
select * from tblAAA
union all
select * from tblBBB;

-- intersect > 교집합
select * from tblAAA
intersect 
select * from tblBBB;

-- minus > 차집합 
select * from tblAAA
minus
select * from tblBBB;

select * from tblBBB
minus 
select * from tblAAA;


























































































































































































































































































































































