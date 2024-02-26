-- ex14_sequence.sql


/*

    시퀀스, Sequence 
    - 데이터베이스 객체 중 하나(테이블, 제약사항, 시퀀스)
    - 오라클 전영 객체(다른 DBMS 제품에는 없음)
    - 일련 번호를 생성하는 객체(******) 
    - 주로 식별자를 만드는데 사용한다. > PK값으로 사용한다. 
    
    시퀀스 객체 생성하기 
    - create sequence 시퀀스명;
    
    시퀀스 객체 삭제하기 
    - drop sequence 시퀀스명;
    
    시퀀스 객체 사용하기 
    - 시퀀스명.nextVal > 함수 > 호출 시 일련 번호 반환 
    - 시퀀스명.currVal
        
*/

-- DB Object > 헝가리언 표기법
-- tblXXX
-- seqXXX

create sequence seqNum;

select seqNum.nextVal from dual;

create sequence seqMemo;

insert into tblMemo (seq, name, memo, regdate)
            values (seqMemo.nextVal, '홍길동', '메모입니다.', sysdate);

select * from tblMemo;


-- 쇼핑몰 > 상품 번호 > ABC101

select 'ABC' || seqNum.nextVal from dual; --ABC11
select 'ABC' || lpad(seqNum.nextVal,3,'0')from dual; -- ABC012


select seqNum.currVal from dual;

/*

    시퀀스 객체 생성하기 
    
    create sequence 시퀀스명;
    
    create sequence 시퀀스명 
                    increment by n  --증감치 
                    start with n    --시작값
                    maxvalue n      --최댁값
                    minvalue n      --최솟값
                    cycle           --
                    cache n






*/

drop sequence seqTest;

create sequence seqTest
                --increment by -1
                --start with 10
                --maxvalue 10
                --minvalue 1
                --cycle
                cache 20
                ;

select seqTest.nextVal from dual;





































