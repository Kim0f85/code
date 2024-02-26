--ex02_datatype.sql

/*

관계형 데이터베이스
- 변수(X) > SQL은 프로그래밍 언어가 아니다. 
- SQL > 대화형 언어 > DB와 대화를 목적으로 하는 언어 
- 자료형 > 데이터 저장하는 규칙 > 테이블 정의할 때 사용 > 컬럼의 자료형 

ANSI-SQL 자료형 
- 오라클 자료형 

1. 숫자형 
    - number : 정수 or 실수 
    - number(percision): 전체 
    - number(percision, scale): 전체 자릿수 > 정수/실수 저장 
    
    
    
    
    
2. 문자형 
    - 문자 + 문자열 
    - char vs nchar > n의 의미?
    - char vs varchar > var의 의미 
    
    a. char
        - 고정 자릿수 문자열 > 공간(컬럼)의 크기가 불변 
        - char(n): 최대 n자리 문자열, n(바이트)
            - 최소 크기 : 1 바이트 
            - 최대 크기 : 2000바이트
        - 데이터 삽입 후 > 남은 공간을 공백으로 채운다.
        
    b. nchar
        - n: national > 오라클 인코딩과 상관없이 해당 컬럼을 UTF-16으로 동작
        - nchar(n) : 최대 n자리 문자열 , n(문자수)
            - 최소 크기 : 1 바이드
            - 
        
    c. varchar2
        - 가변 자릿수 문자열 > 공간(컬럼)의 크기가 가변
         - char(n): 최대 n자리 문자열, n(바이트)
            - 최소 크기 : 1 바이트 
            - 최대 크기 : 4000바이트
        - 데이터 삽입 후 > 남은 공간을 제거한다.
        
    d. nvarchar2 

3. 날짜/시간형 
4. 이진 데이터형 

테이블 선언(생성) 
create table 테이블명 (
    컬럼 선언,
    컬럼 선언,
    컬럼 선언,
    컬럼명 저료형 
)


*/

--헝가리안 표기법 > 자료형을 접두어로 사요 

drop table tblType;

create table tblType(
  --num number 
  --num number(3) -- -999 ~ 999
  --num number(4,2)
  `
  --txt char(10) -- 오라클 어떤 인코딩 ? UTF-8
  txt1 char(10),
  txt2 varchar2(100)
);

--데이터 추가하기 
--insert into 테이블 (컬럼명) values (값);
insert into tblType (num) values (100) ;--정수 리터럴 
insert into tblType (num) values (3.14) ;--
insert into tblType (num) values (3.99) ;-
insert into tblType (num) values (1234);

insert into tblType (txt) values ('ABC');
insert into tblType (txt) values ('ABCASDFASDF');
insert into tblType (txt) values ('홍길동님');

insert into tblType(txt1,txt2) values ('A','B');
insert into tblType(txt1,txt2) values ('ABCDEFGHIJ','ABCDEFJGHIJ');


--데이터 가져오기 
select * from tblType; 



