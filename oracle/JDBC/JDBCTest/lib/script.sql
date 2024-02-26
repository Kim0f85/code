-- 주소록 테이블
drop table tblAddress;

create table tblAddress(
    seq number primary key,
    name varchar2(30) not null,
    age number(3) not null ,
    gender char(1) not null check (gender in('m','f')),
    tel varchar2(15) not null,
    address varchar2(300) not null,
    regdate date default sysdate not null
);

drop table tblAdress;

create sequence seqAddress;

insert into tblAddress (seq,name,age,gender,tel,address,regdate)
    values(seqAddress.nextval,'홍길동',20,'m','010-1234-5678','서울시 강남구 역삼동 한독빌딩',default);

update tblAddress set age = age +1 where seq =1;

delete from tblAddress where seq = 2;
select * from tblAddress;
commit;

select * from TBLINSA;