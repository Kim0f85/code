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
    department_id NUMBER PRIMARY KEY,         -- �μ����̵�
    name VARCHAR2(100) NOT NULL    -- �μ��̸�
);

CREATE TABLE tableSpecial(
    id NUMBER PRIMARY KEY,          -- �μ� ��� ���̵�
    movie_id NUMBER,                -- ��ȭ��ȣ
    name VARCHAR2(100) NOT NULL,    -- �ѱ��̸�
    department number               -- �μ���ȣ
);

CREATE TABLE tableMusic (
    id NUMBER PRIMARY KEY,         -- �μ� ��� ���̵�
    movie_id NUMBER,               -- ��ȭ ��ȣ
    name VARCHAR2(100) NOT NULL,   -- �̸�
    department NUMBER              -- �μ� ��ȣ
);

CREATE TABLE tableArt (
    id NUMBER PRIMARY KEY,          -- �μ� ��� ���̵�
    movie_id NUMBER,                -- ��ȭ ��ȣ
    name VARCHAR2(100) NOT NULL,    -- �ѱ��̸�
    department NUMBER               -- �μ���ȣ
);

CREATE TABLE tableScenario (
    id NUMBER PRIMARY KEY,          -- �μ� ��� ���̵�
    movie_id NUMBER,                -- ��ȭ ��ȣ
    name VARCHAR2(100) NOT NULL,    -- �ѱ��̸�
    department NUMBER               -- �μ���ȣ
);

CREATE TABLE tableCostume (
    id NUMBER PRIMARY KEY,          -- �μ� ��� ���̵�
    movie_id NUMBER,                -- ��ȭ ��ȣ
    name VARCHAR2(100) NOT NULL,    -- �ѱ��̸�
    department NUMBER               -- �μ���ȣ
);

CREATE TABLE tableFilm (
    id NUMBER PRIMARY KEY,          -- �μ� ��� ���̵�
    movie_id NUMBER,                -- ��ȭ ��ȣ
    name VARCHAR2(100) NOT NULL,    -- �ѱ��̸�
    department NUMBER               -- �μ���ȣ
);

CREATE TABLE tableEdit (
    id NUMBER PRIMARY KEY,          -- �μ� ��� ���̵�
    movie_id NUMBER,                -- ��ȭ ��ȣ
    name VARCHAR2(100) NOT NULL,    -- �ѱ��̸�
    department NUMBER               -- �μ���ȣ
);

CREATE TABLE tablePlan (
    id NUMBER PRIMARY KEY,          -- �μ� ��� ���̵�
    movie_id NUMBER,                -- ��ȭ ��ȣ
    name VARCHAR2(100) NOT NULL,    -- �ѱ��̸�
    department NUMBER               -- �μ���ȣ
);


---------------------------------------------------------------------------
-----------department------------

insert into tableDepartment(department_id, name)
    values ((SELECT nvl(MAX(department_id), 0)+1 from tableDepartment),'Ư��ȿ��');

insert into tableDepartment(department_id, name)
    values ((SELECT nvl(MAX(department_id), 0)+1 from tableDepartment),'����');

insert into tableDepartment(department_id, name)
    values ((SELECT nvl(MAX(department_id), 0)+1 from tableDepartment),'�̼�');

insert into tableDepartment(department_id, name)
    values ((SELECT nvl(MAX(department_id), 0)+1 from tableDepartment),'����');

insert into tableDepartment(department_id, name)
    values ((SELECT nvl(MAX(department_id), 0)+1 from tableDepartment),'�ǻ�');

insert into tableDepartment(department_id, name)
    values ((SELECT nvl(MAX(department_id), 0)+1 from tableDepartment),'�Կ�');

insert into tableDepartment(department_id, name)
    values ((SELECT nvl(MAX(department_id), 0)+1 from tableDepartment),'����');

insert into tableDepartment(department_id, name)
    values ((SELECT nvl(MAX(department_id), 0)+1 from tableDepartment),'��ȹ');
---------------------------------------------------------------------------
---------------------special--------------------------------------


insert into tableSpecial (id,movie_id,name,department)
    values((SELECT nvl(MAX(id), 0)+1 from tableSpecial),32,'�Ը��� ������',1);

select
    *
from tableSpecial;

select
    seq,KNAME
from TABLEMOVIE;
------------------------------------
------------------Music----------------------------------------
INSERT INTO tableMusic (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 from tableMusic), 16, '����ġ ��ī����', 2);

INSERT INTO tableMusic (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 from tableMusic), 18, '���̵帮�� ������', 2);

INSERT INTO tableMusic (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 from tableMusic), 19, '���Ʊ�', 2);

INSERT INTO tableMusic (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 from tableMusic), 19, '�ο� A. �����þ�', 2);

INSERT INTO tableMusic (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 from tableMusic), 22, '��޹پ߽� �ðԷ�', 2);

INSERT INTO tableMusic (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 from tableMusic), 28, '��� ��', 2);

INSERT INTO tableMusic (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 from tableMusic), 42, '������ ����', 2);

select
    *
from tableMusic;
---------------------------------------------------------------------------
------------------------Art--------------------------------
INSERT INTO tableArt (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableArt), 18, '���� ����', 3);

INSERT INTO tableArt (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableArt), 19, '�����', 3);

INSERT INTO tableArt (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableArt), 12, '�����', 3);

INSERT INTO tableArt (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableArt), 18, '�����', 3);

select
    *
from tableArt;
---------------------------------------------------------------------------
------------------------Scenario--------------------------------------
INSERT INTO tableScenario (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableScenario), 1, '�ø� �ĸ����� �� ŷ ���̸� ��ġ', 4);

INSERT INTO tableScenario (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableScenario), 8, '���ؿ�', 4);

INSERT INTO tableScenario (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableScenario), 9, '���̽� Ǫġ��', 4);

INSERT INTO tableScenario (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableScenario), 10, '�׽��丣 F ���Ͻ�', 4);

INSERT INTO tableScenario (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableScenario), 11, '��� �پ�', 4);

INSERT INTO tableScenario (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableScenario), 11, '�˷��ѵ�� ���׺�����', 4);

INSERT INTO tableScenario (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableScenario), 12, '�㽺ƾ Ʈ����', 4);

INSERT INTO tableScenario (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableScenario), 12, '�Ƽ� �϶�', 4);

INSERT INTO tableScenario (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableScenario), 15, '���̺�� ��ּ�', 4);

INSERT INTO tableScenario (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableScenario), 16, '��ī���� ����', 4);

INSERT INTO tableScenario (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableScenario), 18, 'ũ����Ƽ�� ����', 4);

INSERT INTO tableScenario (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableScenario), 19, '�հ���', 4);

INSERT INTO tableScenario (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableScenario), 22, '�հ���', 4);

INSERT INTO tableScenario (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableScenario), 23, '�Ͼ�ī�� ġ��', 4);

INSERT INTO tableScenario (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableScenario), 25, '������ �����', 4);

INSERT INTO tableScenario (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableScenario), 28, '�հ���', 4);

INSERT INTO tableScenario (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableScenario), 34, '����', 4);

INSERT INTO tableScenario (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableScenario), 35, '�� ����Ƽ', 4);

INSERT INTO tableScenario (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableScenario), 36, '�̳�쿡 ��������', 4);

INSERT INTO tableScenario (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableScenario), 37, '���ù� ��Ÿ', 4);

INSERT INTO tableScenario (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableScenario), 39, '��ī���� ����', 4);

INSERT INTO tableScenario (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableScenario), 40, '���� ��ġ', 4);

INSERT INTO tableScenario (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableScenario), 40, '�˷��� ��ī��', 4);

INSERT INTO tableScenario (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableScenario), 47, '����̾� ����', 4);

INSERT INTO tableScenario (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableScenario), 50, '��ô� ������', 4);


select
    *
from tableScenario;
---------------------------------------------------------------------------
----------------------------costume-------------------------------
INSERT INTO tableCostume (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableCostume), 19, '�����', 5);

INSERT INTO tableCostume (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableCostume), 22, '�����', 5);

select
    *
from tableCostume;
---------------------------------------------------------------------------
---------------------------film--------------------------------------

INSERT INTO tableFilm (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableFilm), 18, '���Ͻ� ��Ʈ����', 6);

INSERT INTO tableFilm (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableFilm), 19, 'ũ�������� ����', 6);
INSERT INTO tableFilm (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableFilm), 19, '������', 6);

INSERT INTO tableFilm (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableFilm), 22, 'ũ�������� ����', 6);
INSERT INTO tableFilm (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableFilm), 22, '������', 6);

INSERT INTO tableFilm (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableFilm), 28, 'ũ�������� ����', 6);

INSERT INTO tableFilm (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableFilm), 42, 'ȣ��Ʈ �� ȣ���׸�', 6);

select
    *
from tableFilm;

---------------------------------------------------------------------------
-----------------------------edit--------------------------------------
INSERT INTO tableEdit (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableEdit), 18, '������ M. �ش���', 7);

INSERT INTO tableEdit (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableEdit), 18, '�е���� ��Ų��', 7);

INSERT INTO tableEdit (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableEdit), 19, '�����', 7);

INSERT INTO tableEdit (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableEdit), 19, '�ذ���', 7);

INSERT INTO tableEdit (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableEdit), 19, '������', 7);

INSERT INTO tableEdit (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableEdit), 28, '�����', 7);

INSERT INTO tableEdit (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableEdit), 28, 'Ȳ��', 7);

INSERT INTO tableEdit (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableEdit), 32, '�� ��Ŀ', 7);

INSERT INTO tableEdit (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tableEdit), 42, '������ ����', 7);

select
    *
from tableEdit;
---------------------------------------------------------------------------
---------------------plan---------------------------------------------

INSERT INTO tablePlan (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tablePlan), 16, 'ī�͹��� ��Ű', 8);
INSERT INTO tablePlan (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tablePlan), 16, '�߸��� ����', 8);
INSERT INTO tablePlan (id, movie_id, name, department) VALUES
((SELECT nvl(MAX(id), 0)+1 FROM tablePlan), 16, '�콺�� �����', 8);

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