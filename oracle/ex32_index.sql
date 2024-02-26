-- ex32.sql

/*

    인덱스, INDEX
    - 검색을 빠른 속도로 하기 위해 사용하는 도구
    - SQL 명령 처리 속도를 빠르게 하기 위해서, 특정 컬럼에 대해서 생성하는 도구

    데이터베이스
    - 실제 DB(HDD) > 레코드 순서가 사용자가 워하는 정렬 상태가 아니다.
        > DBMS가 자체적으로 정렬 + 저장
    - 어떤 데이터를 검색 > 처음 ~ 끝까지 차례대로 검색 > table full scan
    - 특정 컬럼 선택 > 별도의 테이블에 복사 > 미리 정렬 >> 인덱스
    - 인덱스 -> 참조 > 테이블(레코드)

    인덱스 장담점
    - 처리 속도를 향상 시킨다.
    - 무분별한 인덱스 사용은 DB 성능을 저하시킨다.

    자동으로 인덱스가 걸리는 컬럼
    1. primary key
    2. unique
    - *** 테이블에서 PK컬럼을 검색하는 속도 > 테이블에서 PK 아닌 컬럼을 검색하는 속도

*/

select
    count(*)
from TBLADDRESSBOOK;

create table tblIndex
as
select * from TBLADDRESSBOOK;

insert into tblIndex select * from tblIndex;

select count(*) from tblIndex;

-- 시간 확인
set timing on;

select * from TBLCOUNTRY;



