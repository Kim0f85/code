---------- drop --------------
drop table tableSpecial;
drop table tableMUSIC;
drop table tableART;
drop table tableSCENARIO;
drop table tableCOSTUME;
drop table tableFILM;
drop table tableEDIT;
drop table tablePLAN;
drop table tableDepartment;
--------------------------------


CREATE TABLE tableDepartment(
    department_id NUMBER PRIMARY KEY,         -- 부서아이디
    name VARCHAR2(100) NOT NULL    -- 부서이름
);

CREATE TABLE tableSpecial(
    id NUMBER PRIMARY KEY,          -- 부서 사원 아이디
    movie_id NUMBER,                -- 영화번호
    name VARCHAR2(100) NOT NULL,    -- 한글이름
    department number               -- 부서번호
);

CREATE TABLE tableMusic (
    id NUMBER PRIMARY KEY,         -- 부서 사원 아이디
    movie_id NUMBER,               -- 영화 번호
    name VARCHAR2(100) NOT NULL,   -- 이름
    department NUMBER              -- 부서 번호
);

CREATE TABLE tableArt (
    id NUMBER PRIMARY KEY,          -- 부서 사원 아이디
    movie_id NUMBER,                -- 영화 번호
    name VARCHAR2(100) NOT NULL,    -- 한글이름
    department NUMBER               -- 부서번호
);

CREATE TABLE tableScenario (
    id NUMBER PRIMARY KEY,          -- 부서 사원 아이디
    movie_id NUMBER,                -- 영화 번호
    name VARCHAR2(100) NOT NULL,    -- 한글이름
    department NUMBER               -- 부서번호
);

CREATE TABLE tableCostume (
    id NUMBER PRIMARY KEY,          -- 부서 사원 아이디
    movie_id NUMBER,                -- 영화 번호
    name VARCHAR2(100) NOT NULL,    -- 한글이름
    department NUMBER               -- 부서번호
);

CREATE TABLE tableFilm (
    id NUMBER PRIMARY KEY,          -- 부서 사원 아이디
    movie_id NUMBER,                -- 영화 번호
    name VARCHAR2(100) NOT NULL,    -- 한글이름
    department NUMBER               -- 부서번호
);

CREATE TABLE tableEdit (
    id NUMBER PRIMARY KEY,          -- 부서 사원 아이디
    movie_id NUMBER,                -- 영화 번호
    name VARCHAR2(100) NOT NULL,    -- 한글이름
    department NUMBER               -- 부서번호
);

CREATE TABLE tablePlan (
    id NUMBER PRIMARY KEY,          -- 부서 사원 아이디
    movie_id NUMBER,                -- 영화 번호
    name VARCHAR2(100) NOT NULL,    -- 한글이름
    department NUMBER               -- 부서번호
);


---------------------------------------------------------------------------
-----------department------------

insert into tableDepartment(department_id, name)
    values ((SELECT nvl(MAX(department_id), 0)+1 from tableDepartment),'특수효과');

insert into tableDepartment(department_id, name)
    values ((SELECT nvl(MAX(department_id), 0)+1 from tableDepartment),'음악');

insert into tableDepartment(department_id, name)
    values ((SELECT nvl(MAX(department_id), 0)+1 from tableDepartment),'미술');

insert into tableDepartment(department_id, name)
    values ((SELECT nvl(MAX(department_id), 0)+1 from tableDepartment),'각본');

insert into tableDepartment(department_id, name)
    values ((SELECT nvl(MAX(department_id), 0)+1 from tableDepartment),'의상');

insert into tableDepartment(department_id, name)
    values ((SELECT nvl(MAX(department_id), 0)+1 from tableDepartment),'촬영');

insert into tableDepartment(department_id, name)
    values ((SELECT nvl(MAX(department_id), 0)+1 from tableDepartment),'편집');

insert into tableDepartment(department_id, name)
    values ((SELECT nvl(MAX(department_id), 0)+1 from tableDepartment),'기획');
---------------------------------------------------------------------------
---------------------special--------------------------------------


insert into tableSpecial (id,movie_id,name,department)
    values((SELECT nvl(MAX(id), 0)+1 from tableSpecial),32,'게르드 네프저',1);

select
    *
from tableSpecial;

select
    seq,KNAME
from TABLEMOVIE;
------------------------------------
------------------Music----------------------------------------
INSERT INTO tableMusic (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 from tableMusic), 16, '류이치 사카모토', 2);

INSERT INTO tableMusic (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 from tableMusic), 18, '에이드리언 존스턴', 2);

INSERT INTO tableMusic (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 from tableMusic), 19, '진훈기', 2);

INSERT INTO tableMusic (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 from tableMusic), 19, '로엘 A. 가르시아', 2);

INSERT INTO tableMusic (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 from tableMusic), 22, '우메바야시 시게루', 2);

INSERT INTO tableMusic (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 from tableMusic), 28, '대니 정', 2);

INSERT INTO tableMusic (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 from tableMusic), 42, '러드윅 고랜슨', 2);

select
    *
from tableMusic;
---------------------------------------------------------------------------
------------------------Art--------------------------------
INSERT INTO tableArt (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableArt), 18, '조셉 버넷', 3);

INSERT INTO tableArt (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableArt), 19, '장숙평', 3);

INSERT INTO tableArt (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableArt), 12, '장숙평', 3);

INSERT INTO tableArt (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableArt), 18, '장숙평', 3);

select
    *
from tableArt;
---------------------------------------------------------------------------
------------------------Scenario--------------------------------------
INSERT INTO tableScenario (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableScenario), 1, '시몬 파르나비 폴 킹 사이먼 리치', 4);

INSERT INTO tableScenario (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableScenario), 8, '하준원', 4);

INSERT INTO tableScenario (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableScenario), 9, '제이슨 푸치스', 4);

INSERT INTO tableScenario (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableScenario), 10, '네스토르 F 데니스', 4);

INSERT INTO tableScenario (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableScenario), 11, '라드 바아', 4);

INSERT INTO tableScenario (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableScenario), 11, '알레한드로 몬테베르드', 4);

INSERT INTO tableScenario (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableScenario), 12, '쥐스틴 트리에', 4);

INSERT INTO tableScenario (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableScenario), 12, '아서 하라리', 4);

INSERT INTO tableScenario (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableScenario), 15, '데이비드 헤밍손', 4);

INSERT INTO tableScenario (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableScenario), 16, '사카모토 유지', 4);

INSERT INTO tableScenario (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableScenario), 18, '크리스티나 웰스', 4);

INSERT INTO tableScenario (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableScenario), 19, '왕가위', 4);

INSERT INTO tableScenario (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableScenario), 22, '왕가위', 4);

INSERT INTO tableScenario (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableScenario), 23, '하야카와 치에', 4);

INSERT INTO tableScenario (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableScenario), 25, '오오네 히토시', 4);

INSERT INTO tableScenario (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableScenario), 28, '왕가위', 4);

INSERT INTO tableScenario (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableScenario), 34, '김명균', 4);

INSERT INTO tableScenario (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableScenario), 35, '폴 래버티', 4);

INSERT INTO tableScenario (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableScenario), 36, '이노우에 다케히코', 4);

INSERT INTO tableScenario (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableScenario), 37, '츠시미 분타', 4);

INSERT INTO tableScenario (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableScenario), 39, '사카모토 준지', 4);

INSERT INTO tableScenario (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableScenario), 40, '새미 버치', 4);

INSERT INTO tableScenario (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableScenario), 40, '알렉스 메카닉', 4);

INSERT INTO tableScenario (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableScenario), 47, '브라이언 버드', 4);

INSERT INTO tableScenario (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableScenario), 50, '요시다 레이코', 4);


select
    *
from tableScenario;
---------------------------------------------------------------------------
----------------------------costume-------------------------------
INSERT INTO tableCostume (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableCostume), 19, '장숙평', 5);

INSERT INTO tableCostume (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableCostume), 22, '장숙평', 5);

select
    *
from tableCostume;
---------------------------------------------------------------------------
---------------------------film--------------------------------------

INSERT INTO tableFilm (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableFilm), 18, '자일스 너트젠스', 6);

INSERT INTO tableFilm (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableFilm), 19, '크리스토퍼 도일', 6);
INSERT INTO tableFilm (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableFilm), 19, '유위강', 6);

INSERT INTO tableFilm (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableFilm), 22, '크리스토퍼 도일', 6);
INSERT INTO tableFilm (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableFilm), 22, '유위강', 6);

INSERT INTO tableFilm (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableFilm), 28, '크리스토퍼 도일', 6);

INSERT INTO tableFilm (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableFilm), 42, '호이트 반 호이테마', 6);

select
    *
from tableFilm;

---------------------------------------------------------------------------
-----------------------------edit--------------------------------------
INSERT INTO tableEdit (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableEdit), 18, '윌리엄 M. 앤더슨', 7);

INSERT INTO tableEdit (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableEdit), 18, '패드라익 매킨리', 7);

INSERT INTO tableEdit (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableEdit), 19, '장숙평', 7);

INSERT INTO tableEdit (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableEdit), 19, '해걸위', 7);

INSERT INTO tableEdit (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableEdit), 19, '광지량', 7);

INSERT INTO tableEdit (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableEdit), 28, '장숙평', 7);

INSERT INTO tableEdit (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableEdit), 28, '황명림', 7);

INSERT INTO tableEdit (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableEdit), 32, '조 워커', 7);

INSERT INTO tableEdit (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableEdit), 42, '제니퍼 레임', 7);

select
    *
from tableEdit;
---------------------------------------------------------------------------
---------------------plan---------------------------------------------

INSERT INTO tablePlan (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tablePlan), 16, '카와무라 겐키', 8);
INSERT INTO tablePlan (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tablePlan), 16, '야마다 켄지', 8);
INSERT INTO tablePlan (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tablePlan), 16, '우스이 히사시', 8);

select
    *
from tablePlan;

---------------------------------------------------------------------------
drop table INSA;
create table INSA as
    SELECT movie_id, name, department FROM tableSpecial
UNION ALL
    SELECT movie_id, name, department FROM tableMusic
UNION ALL
    SELECT movie_id, name, department FROM tableArt
UNION ALL
    SELECT movie_id, name, department FROM tableScenario
UNION ALL
    SELECT movie_id, name, department FROM tableCostume
UNION ALL
    SELECT movie_id, name, department FROM tableFilm
UNION ALL
    SELECT movie_id, name, department FROM tableEdit
UNION ALL
    SELECT movie_id, name, department FROM tablePlan;

select *
from INSA;

------------------------------------
select
    *
from tableDepartment;

select
    *
from tableScenario s
    inner join tableDepartment d
        on s.department = d.department_id;

------------

select
    distinct seq,kname
from TABLEMOVIE m
    join tablePlan p
        on m.SEQ = p.movie_id;

------------

select
    *
from TABLEMOVIE m
    inner join INSA i
    on m.SEQ = i.MOVIE_ID
    order by seq asc;