
-- AjaxTest > script.sql

-- 설문 조사
create table tblSurvey (
    seq number primary key,             --번호(PK)
    question varchar2(300) not null,    --질문
    item1 varchar2(300) not null,       --항목1
    item2 varchar2(300) not null,       --항목2
    item3 varchar2(300) not null,       --항목3
    item4 varchar2(300) not null,       --항목4
    cnt1 number default 0 not null,     --선택1
    cnt2 number default 0 not null,     --선택2
    cnt3 number default 0 not null,     --선택3
    cnt4 number default 0 not null      --선택4
);

insert into tblSurvey values (1, '가장 자신있는 프로그래밍 언어는?'
    , 'JAVA', 'Python', 'C#', 'C++', default, default, default, default);
    
select * from tblSurvey;

update tblSurvey set
    cnt1 = 8,
    cnt2 = 6,
    cnt3 = 2,
    cnt4 = 5
        where seq = 1;

commit;


select * from tblUser;


create table tblCat(
    catid varchar2(50) primary key,
    x number not null,
    y number not null
);

select * from tblCat;

drop table tblAddress;
select * from TBLADDRESS;

create table tblAddress(
  seq number primary key ,
  name varchar2(30) not null,
    age number(3) not null ,
    gender char(1) not null ,
    address varchar2(300) not null
);

drop sequence  seqAddress;
create sequence seqAddress;




















