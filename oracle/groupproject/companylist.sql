
create table tableImport(
  seq NUMBER PRIMARY KEY,-- 영화번호
  Suip varchar2(200)
);
select * from tableImport;

drop table tableImport;

INSERT INTO tableImport(seq, Suip) VALUES (1, '워너브러더스 코리아(주)');
INSERT INTO tableImport(seq, Suip) VALUES (2, null);
INSERT INTO tableImport(seq, Suip) VALUES (3, '애니맥스브로드캐스팅코리아(유)');
INSERT INTO tableImport(seq, Suip) VALUES (4, null);
INSERT INTO tableImport(seq, Suip) VALUES (5, null);
INSERT INTO tableImport(seq, Suip) VALUES (6, null);
INSERT INTO tableImport(seq, Suip) VALUES (7, '더핑크퐁컴퍼니(주)');
INSERT INTO tableImport(seq, Suip) VALUES (8, null);
INSERT INTO tableImport(seq, Suip) VALUES (9, null);
INSERT INTO tableImport(seq, Suip) VALUES (10, '에이케이엔터테인먼트㈜');
INSERT INTO tableImport(seq, Suip) VALUES (11, '㈜콘텐츠판다');
INSERT INTO tableImport(seq, Suip) VALUES (12, '그린나래미디어㈜');
INSERT INTO tableImport(seq, Suip) VALUES (13, null);
INSERT INTO tableImport(seq, Suip) VALUES (14, '오드(AUD)');
INSERT INTO tableImport(seq, Suip) VALUES (15, '유니버설 픽쳐스인터내셔널 코리아(유)');
INSERT INTO tableImport(seq, Suip) VALUES (16, '㈜미디어캐슬');
INSERT INTO tableImport(seq, Suip) VALUES (17, '(주)퍼스트런(FistRuninc)');
INSERT INTO tableImport(seq, Suip) VALUES (18, '(유)조이앤시네마');
INSERT INTO tableImport(seq, Suip) VALUES (19, '스타맥스, ㈜엔케이컨텐츠');
INSERT INTO tableImport(seq, Suip) VALUES (20, null);
INSERT INTO tableImport(seq, Suip) VALUES (21, '㈜미디어캐슬');
INSERT INTO tableImport(seq, Suip) VALUES (22, '㈜엔케이컨텐츠');
INSERT INTO tableImport(seq, Suip) VALUES (23, '찬란');
INSERT INTO tableImport(seq, Suip) VALUES (24, null);
INSERT INTO tableImport(seq, Suip) VALUES (25, null);
INSERT INTO tableImport(seq, Suip) VALUES (26, '월트디즈니컴퍼니코리아㈜');
INSERT INTO tableImport(seq, Suip) VALUES (27, null);
INSERT INTO tableImport(seq, Suip) VALUES (28, '서우영화,㈜엔케이컨텐츠');
INSERT INTO tableImport(seq, Suip) VALUES (29, null);
INSERT INTO tableImport(seq, Suip) VALUES (30, null);
INSERT INTO tableImport(seq, Suip) VALUES (31, null);
INSERT INTO tableImport(seq, Suip) VALUES (32, '소니 픽쳐스');
INSERT INTO tableImport(seq, Suip) VALUES (33, '유니버설 픽쳐스인터내셔널 코리아(유)');
INSERT INTO tableImport(seq, Suip) VALUES (34, null);
INSERT INTO tableImport(seq, Suip) VALUES (35, '㈜영화사 진진');
INSERT INTO tableImport(seq, Suip) VALUES (36, '에스엠지홀딩스㈜');
INSERT INTO tableImport(seq, Suip) VALUES (37, '메가박스중앙(주) MEGABOX');
INSERT INTO tableImport(seq, Suip) VALUES (38, null);
INSERT INTO tableImport(seq, Suip) VALUES (39, '㈜엣나인필름');
INSERT INTO tableImport(seq, Suip) VALUES (40, '판씨네마㈜');
INSERT INTO tableImport(seq, Suip) VALUES (41, '오드(AUD)');
INSERT INTO tableImport(seq, Suip) VALUES (42, '유니버설 픽쳐스');
INSERT INTO tableImport(seq, Suip) VALUES (43, '㈜미디어캐슬');
INSERT INTO tableImport(seq, Suip) VALUES (44, null);
INSERT INTO tableImport(seq, Suip) VALUES (45, null);
INSERT INTO tableImport(seq, Suip) VALUES (46, '㈜드림팩트엔터테인먼트');
INSERT INTO tableImport(seq, Suip) VALUES (47, '길갈');
INSERT INTO tableImport(seq, Suip) VALUES (48, null);
INSERT INTO tableImport(seq, Suip) VALUES (49, null);
INSERT INTO tableImport(seq, Suip) VALUES (50, '㈜엔케이컨텐츠');

select * from tableImport;

create table tableDistri(
  seq NUMBER PRIMARY KEY,-- 영화번호
  dis varchar2(200)
);

INSERT INTO tableDistri(seq, dis) VALUES (1, '워너브러더스 코리아(주)');
INSERT INTO tableDistri(seq, dis) VALUES (2, '다큐스토리');
INSERT INTO tableDistri(seq, dis) VALUES (3, 'CJ CGV');
INSERT INTO tableDistri(seq, dis) VALUES (4, '㈜쇼박스');
INSERT INTO tableDistri(seq, dis) VALUES (5, '롯데컬처웍스㈜롯데엔터테인먼트');
INSERT INTO tableDistri(seq, dis) VALUES (6, 'CJ ENM');
INSERT INTO tableDistri(seq, dis) VALUES (7, '㈜넥스트엔터테인먼트월드(NEW)');
INSERT INTO tableDistri(seq, dis) VALUES (8, '플러스엠 엔터테인먼트');
INSERT INTO tableDistri(seq, dis) VALUES (9, null);
INSERT INTO tableDistri(seq, dis) VALUES (10, '㈜팝엔터테인먼트');
INSERT INTO tableDistri(seq, dis) VALUES (11, '㈜넥스트엔터테인먼트월드(NEW)');
INSERT INTO tableDistri(seq, dis) VALUES (12, '㈜스튜디오디에이치엘');
INSERT INTO tableDistri(seq, dis) VALUES (13, '㈜BoXoo엔터테인먼트');
INSERT INTO tableDistri(seq, dis) VALUES (14, '오드(AUD)');
INSERT INTO tableDistri(seq, dis) VALUES (15, '유니버설 픽쳐스인터내셔널 코리아(유)');
INSERT INTO tableDistri(seq, dis) VALUES (16, '㈜넥스트엔터테인먼트월드(NEW)');
INSERT INTO tableDistri(seq, dis) VALUES (17, '(주)무비다이브');
INSERT INTO tableDistri(seq, dis) VALUES (18, '와이드릴리즈, ㈜제이앤씨미디어그룹');
INSERT INTO tableDistri(seq, dis) VALUES (19, '㈜디스테이션');
INSERT INTO tableDistri(seq, dis) VALUES (20, '플러스엠 엔터테인먼트');
INSERT INTO tableDistri(seq, dis) VALUES (21, '홀리가든, (주)바이포엠스튜디오');
INSERT INTO tableDistri(seq, dis) VALUES (22, '㈜디스테이션');
INSERT INTO tableDistri(seq, dis) VALUES (23, '찬란');
INSERT INTO tableDistri(seq, dis) VALUES (24, '㈜롯시플,㈜영화사 그램');
INSERT INTO tableDistri(seq, dis) VALUES (25, 'CJ E&M Pictures');
INSERT INTO tableDistri(seq, dis) VALUES (26, '월트디즈니컴퍼니코리아㈜');
INSERT INTO tableDistri(seq, dis) VALUES (27, '판씨네마㈜, (주)홈초이스');
INSERT INTO tableDistri(seq, dis) VALUES (28, '골든 하베스트 컴퍼니,㈜디스테이션');
INSERT INTO tableDistri(seq, dis) VALUES (29, null);
INSERT INTO tableDistri(seq, dis) VALUES (30, null);
INSERT INTO tableDistri(seq, dis) VALUES (31, 'CJ ENM');
INSERT INTO tableDistri(seq, dis) VALUES (32, '소니 픽쳐스');
INSERT INTO tableDistri(seq, dis) VALUES (33, '유니버설 픽쳐스인터내셔널 코리아(유)');
INSERT INTO tableDistri(seq, dis) VALUES (34, null);
INSERT INTO tableDistri(seq, dis) VALUES (35, '㈜영화사 진진');
INSERT INTO tableDistri(seq, dis) VALUES (36, '㈜넥스트엔터테인먼트월드(NEW)');
INSERT INTO tableDistri(seq, dis) VALUES (37, '메가박스중앙(주) MEGABOX, T-JOY');
INSERT INTO tableDistri(seq, dis) VALUES (38, 'CJ CGV');
INSERT INTO tableDistri(seq, dis) VALUES (39, '㈜엣나인필름');
INSERT INTO tableDistri(seq, dis) VALUES (40, '판씨네마㈜');
INSERT INTO tableDistri(seq, dis) VALUES (41, '오드(AUD)');
INSERT INTO tableDistri(seq, dis) VALUES (42, '유니버설 픽쳐스');
INSERT INTO tableDistri(seq, dis) VALUES (43, '㈜미디어캐슬');
INSERT INTO tableDistri(seq, dis) VALUES (44, '파라마운트 픽쳐스');
INSERT INTO tableDistri(seq, dis) VALUES (45, 'Toei Co. Ltd.');
INSERT INTO tableDistri(seq, dis) VALUES (46, '(주)홈초이스,㈜드림팩트엔터테인먼트,㈜스마일이엔티');
INSERT INTO tableDistri(seq, dis) VALUES (47, '길갈');
INSERT INTO tableDistri(seq, dis) VALUES (48, null);
INSERT INTO tableDistri(seq, dis) VALUES (49, null);
INSERT INTO tableDistri(seq, dis) VALUES (50, '㈜디스테이션');

select * from tableDistri;

create table tablecompany(
  seq NUMBER PRIMARY KEY, --company
  --company varchar2(200),
  suip varchar2(200),
  dis varchar2(200)
);
drop table tablecompany;
insert INTO tablecompany (seq, suip, dis)
select
    ti.seq,
    ti.Suip,
    td.dis
from tableimport ti
    full outer join tableDistri td
        on ti.seq = td.seq;

select
    *
from tablecompany;

