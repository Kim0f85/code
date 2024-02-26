CREATE TABLE tableMovie(
    seq NUMBER PRIMARY KEY,         -- 영화번호
    rank NUMBER NULL,               -- 순위
    kname VARCHAR2(100) NOT NULL,   -- 한글이름
    ename VARCHAR2(100) NOT NULL,   -- 영문이름
    --country VARCHAR2(100) NOT NULL, -- 국가명
    ryear NUMBER(4) NOT NULL,       -- 출시년도
    rating VARCHAR2(30) NULL,       -- 관람등급
    rtime NUMBER NOT NULL,          -- 상영시간
    release DATE NULL,              -- 개봉일
    audience NUMBER NULL,           -- 누적관객
    plot VARCHAR2(2000)             -- 줄거리
);
DROP TABLE tableMovie;


INSERT INTO tableMovie (seq, rank, kname, ename,  ryear, rating, rtime, release, audience, plot)
    VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableMovie), 1, '웡카', 'Wonka', 2023, '전체관람가', 116, '2024/01/31', 2691215, '세상에서 가장 달콤한 여정
좋은 일은 모두 꿈에서부터 시작된다! 마법사이자 초콜릿 메이커 ‘윌리 웡카’의 꿈은
디저트의 성지, ‘달콤 백화점’에 자신만의 초콜릿 가게를 여는 것.
가진 것이라고는 낡은 모자 가득한 꿈과 단돈 12소버린 뿐이지만
특별한 마법의 초콜릿으로 사람들을 사로잡을 자신이 있다.

하지만 먹을 것도, 잠잘 곳도, 의지할 사람도 없는 상황 속에서
낡은 여인숙에 머물게 된 ‘웡카’는
‘스크러빗 부인’과 ‘블리처’의 계략에 빠져
눈더미처럼 불어난 숙박비로 인해 순식간에 빚더미에 오른다.
게다가 밤마다 초콜릿을 훔쳐가는 작은 도둑 ‘움파 룸파’의 등장과
‘달콤 백화점’을 독점한 초콜릿 카르텔의 강력한 견제까지.
세계 최고의 초콜릿 메이커가 되는 길은 험난하기만 한데…');

select * from tableMovie;

INSERT INTO tableMovie (seq, rank, kname, ename,  ryear, rating, rtime, release, audience, plot)
    VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableMovie), 2, '건국전쟁', 'The Birth of Korea', '한국', 2023, '12세이상관람가', 100, '2024/02/01', 853661, '1945년 해방 이후 남과 북은 서로 다른 길을 걸어 왔다. 자유를 억압하고 인권을 탄압하는 공산주의 독재 국가 북한과 자유와 민주주의에 기초한 경제 번영과 선진국의 길로 들어선 대한민국. 두 나라는 같은 언어, 역사, 인종을 공유하면서 어떻게 극단적인 두 나라로 갈라졌을까? 지난 70년 역사를 통해서 오늘의 대한민국을 만들고 지켜내기 위해 노력했던 이승만 대통령과 건국1세대들의 희생과 투쟁을 조명한 작품.');
INSERT INTO tableMovie (seq, rank, kname, ename,  ryear, rating, rtime, release, audience, plot)
    VALUES(2,2, '건국전쟁', 'The Birth of Korea', 2023, '12세이상관람가', 100, '2024-02-01', 853661, '1945년 해방 이후 남과 북은 서로 다른 길을 걸어 왔다. 자유를 억압하고 인권을 탄압하는 공산주의 독재 국가 북한과 자유와 민주주의에 기초한 경제 번영과 선진국의 길로 들어선 대한민국. 두 나라는 같은 언어, 역사, 인종을 공유하면서 어떻게 극단적인 두 나라로 갈라졌을까? 지난 70년 역사를 통해서 오늘의 대한민국을 만들고 지켜내기 위해 노력했던 이승만 대통령과 건국1세대들의 희생과 투쟁을 조명한 작품.');
INSERT INTO tableMovie (seq, rank, kname, ename,  ryear, rating, rtime, release, audience, plot)
    values(3,3, '귀멸의 칼날: 인연의 기적, 그리고 합동 강화 훈련으로', 'Demon Slayer: Kimetsu no Yaiba To The Hashira Training', 2024, '15세이상관람', 103, '2024-02-14', 337366, NULL);




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

