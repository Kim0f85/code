
CREATE TABLE 감독(
    감독번호 NUMBER PRIMARY KEY,       
    감독이름 varchar2(50) NOT NULL
);

select * from 감독이력;
drop table 감독;

CREATE TABLE 감독이력 (
    이력번호 NUMBER PRIMARY KEY,
    감독번호 NUMBER NOT NULL,
    영화번호 NUMBER NOT NULL,
    FOREIGN KEY (감독번호) REFERENCES 감독(감독번호),
    FOREIGN KEY (영화번호) REFERENCES tableMovie(seq)
);

INSERT INTO 감독 (감독번호, 감독이름) VALUES((SELECT nvl(MAX(감독번호), 0) + 1 FROM 감독),'폴 킹');
INSERT INTO 감독 (감독번호, 감독이름) VALUES((SELECT nvl(MAX(감독번호), 0) + 1 FROM 감독),'김덕영');
INSERT INTO 감독 (감독번호, 감독이름) VALUES((SELECT nvl(MAX(감독번호), 0) + 1 FROM 감독),'소토자키 하루오');
INSERT INTO 감독 (감독번호, 감독이름) VALUES((SELECT nvl(MAX(감독번호), 0) + 1 FROM 감독),'박영주');
INSERT INTO 감독 (감독번호, 감독이름) VALUES((SELECT nvl(MAX(감독번호), 0) + 1 FROM 감독),'김용균');
INSERT INTO 감독 (감독번호, 감독이름) VALUES((SELECT nvl(MAX(감독번호), 0) + 1 FROM 감독),'김덕민');
INSERT INTO 감독 (감독번호, 감독이름) VALUES((SELECT nvl(MAX(감독번호), 0) + 1 FROM 감독),'알란 포맨');
INSERT INTO 감독 (감독번호, 감독이름) VALUES((SELECT nvl(MAX(감독번호), 0) + 1 FROM 감독),'하준원');
INSERT INTO 감독 (감독번호, 감독이름) VALUES((SELECT nvl(MAX(감독번호), 0) + 1 FROM 감독),'매튜 본');
INSERT INTO 감독 (감독번호, 감독이름) VALUES((SELECT nvl(MAX(감독번호), 0) + 1 FROM 감독),'네스토르 F. 데니스');
INSERT INTO 감독 (감독번호, 감독이름) VALUES((SELECT nvl(MAX(감독번호), 0) + 1 FROM 감독),'알레한드로 몬테베르드');
INSERT INTO 감독 (감독번호, 감독이름) VALUES((SELECT nvl(MAX(감독번호), 0) + 1 FROM 감독),'쥐스틴 트리에');
INSERT INTO 감독 (감독번호, 감독이름) VALUES((SELECT nvl(MAX(감독번호), 0) + 1 FROM 감독),'홍인표');
INSERT INTO 감독 (감독번호, 감독이름) VALUES((SELECT nvl(MAX(감독번호), 0) + 1 FROM 감독),'루오 루오');
INSERT INTO 감독 (감독번호, 감독이름) VALUES((SELECT nvl(MAX(감독번호), 0) + 1 FROM 감독),'알렉산더 페인');
INSERT INTO 감독 (감독번호, 감독이름) VALUES((SELECT nvl(MAX(감독번호), 0) + 1 FROM 감독),'고레에다 히로카즈');
INSERT INTO 감독 (감독번호, 감독이름) VALUES((SELECT nvl(MAX(감독번호), 0) + 1 FROM 감독),'로랑 브루');
INSERT INTO 감독 (감독번호, 감독이름) VALUES((SELECT nvl(MAX(감독번호), 0) + 1 FROM 감독),'야닉 물랑');
INSERT INTO 감독 (감독번호, 감독이름) VALUES((SELECT nvl(MAX(감독번호), 0) + 1 FROM 감독),'브누와 솜빌');
INSERT INTO 감독 (감독번호, 감독이름) VALUES((SELECT nvl(MAX(감독번호), 0) + 1 FROM 감독),'길 정');
INSERT INTO 감독 (감독번호, 감독이름) VALUES((SELECT nvl(MAX(감독번호), 0) + 1 FROM 감독),'왕가위');
INSERT INTO 감독 (감독번호, 감독이름) VALUES((SELECT nvl(MAX(감독번호), 0) + 1 FROM 감독),'김성수');
INSERT INTO 감독 (감독번호, 감독이름) VALUES((SELECT nvl(MAX(감독번호), 0) + 1 FROM 감독),'미키 타카히로');
INSERT INTO 감독 (감독번호, 감독이름) VALUES((SELECT nvl(MAX(감독번호), 0) + 1 FROM 감독),'하야카와 치에');
INSERT INTO 감독 (감독번호, 감독이름) VALUES((SELECT nvl(MAX(감독번호), 0) + 1 FROM 감독),'김지선');
INSERT INTO 감독 (감독번호, 감독이름) VALUES((SELECT nvl(MAX(감독번호), 0) + 1 FROM 감독),'조현정');
INSERT INTO 감독 (감독번호, 감독이름) VALUES((SELECT nvl(MAX(감독번호), 0) + 1 FROM 감독),'오네 히토시');
INSERT INTO 감독 (감독번호, 감독이름) VALUES((SELECT nvl(MAX(감독번호), 0) + 1 FROM 감독),'크리스 벅');
INSERT INTO 감독 (감독번호, 감독이름) VALUES((SELECT nvl(MAX(감독번호), 0) + 1 FROM 감독),'폰 비라선손');
INSERT INTO 감독 (감독번호, 감독이름) VALUES((SELECT nvl(MAX(감독번호), 0) + 1 FROM 감독),'김다민');
INSERT INTO 감독 (감독번호, 감독이름) VALUES((SELECT nvl(MAX(감독번호), 0) + 1 FROM 감독),'민환기');
INSERT INTO 감독 (감독번호, 감독이름) VALUES((SELECT nvl(MAX(감독번호), 0) + 1 FROM 감독),'최동훈');
INSERT INTO 감독 (감독번호, 감독이름) VALUES((SELECT nvl(MAX(감독번호), 0) + 1 FROM 감독),'드니 빌뇌브');
INSERT INTO 감독 (감독번호, 감독이름) VALUES((SELECT nvl(MAX(감독번호), 0) + 1 FROM 감독),'벤자민 레너');
INSERT INTO 감독 (감독번호, 감독이름) VALUES((SELECT nvl(MAX(감독번호), 0) + 1 FROM 감독),'최이현');
INSERT INTO 감독 (감독번호, 감독이름) VALUES((SELECT nvl(MAX(감독번호), 0) + 1 FROM 감독),'켄 로치');
INSERT INTO 감독 (감독번호, 감독이름) VALUES((SELECT nvl(MAX(감독번호), 0) + 1 FROM 감독),'이노우에 다케히코');
INSERT INTO 감독 (감독번호, 감독이름) VALUES((SELECT nvl(MAX(감독번호), 0) + 1 FROM 감독),'니시키오리 히로시');
INSERT INTO 감독 (감독번호, 감독이름) VALUES((SELECT nvl(MAX(감독번호), 0) + 1 FROM 감독),'야마모토 켄스케');
INSERT INTO 감독 (감독번호, 감독이름) VALUES((SELECT nvl(MAX(감독번호), 0) + 1 FROM 감독),'윤제완');
INSERT INTO 감독 (감독번호, 감독이름) VALUES((SELECT nvl(MAX(감독번호), 0) + 1 FROM 감독),'김성민');
INSERT INTO 감독 (감독번호, 감독이름) VALUES((SELECT nvl(MAX(감독번호), 0) + 1 FROM 감독),'사카모토 준지');
INSERT INTO 감독 (감독번호, 감독이름) VALUES((SELECT nvl(MAX(감독번호), 0) + 1 FROM 감독),'토드 헤인즈');
INSERT INTO 감독 (감독번호, 감독이름) VALUES((SELECT nvl(MAX(감독번호), 0) + 1 FROM 감독),'헤더 윌크');
INSERT INTO 감독 (감독번호, 감독이름) VALUES((SELECT nvl(MAX(감독번호), 0) + 1 FROM 감독),'크리스토퍼 놀란');
INSERT INTO 감독 (감독번호, 감독이름) VALUES((SELECT nvl(MAX(감독번호), 0) + 1 FROM 감독),'오오모리 타카히');
INSERT INTO 감독 (감독번호, 감독이름) VALUES((SELECT nvl(MAX(감독번호), 0) + 1 FROM 감독),'킹 비더');
INSERT INTO 감독 (감독번호, 감독이름) VALUES((SELECT nvl(MAX(감독번호), 0) + 1 FROM 감독),'안노 히데아키');
INSERT INTO 감독 (감독번호, 감독이름) VALUES((SELECT nvl(MAX(감독번호), 0) + 1 FROM 감독),'매들린 개');
INSERT INTO 감독 (감독번호, 감독이름) VALUES((SELECT nvl(MAX(감독번호), 0) + 1 FROM 감독),'존 건');
INSERT INTO 감독 (감독번호, 감독이름) VALUES((SELECT nvl(MAX(감독번호), 0) + 1 FROM 감독),'김상철');
INSERT INTO 감독 (감독번호, 감독이름) VALUES((SELECT nvl(MAX(감독번호), 0) + 1 FROM 감독),'김한민');
INSERT INTO 감독 (감독번호, 감독이름) VALUES((SELECT nvl(MAX(감독번호), 0) + 1 FROM 감독),'미즈시마 츠토무');

INSERT INTO 감독이력 (이력번호, 감독번호, 영화번호)
VALUES (
    (SELECT nvl(MAX(이력번호), 0) + 1 FROM 감독이력),
    (SELECT 감독번호 FROM 감독 WHERE 감독이름 = '폴 킹'),
    (SELECT seq FROM tableMovie WHERE kname = '웡카')
);
INSERT INTO 감독이력 (이력번호, 감독번호, 영화번호)
VALUES (
    (SELECT nvl(MAX(이력번호), 0) + 1 FROM 감독이력),
    (SELECT 감독번호 FROM 감독 WHERE 감독이름 = '김덕영'),
    (SELECT seq FROM tableMovie WHERE kname = '건국전쟁')
);
INSERT INTO 감독이력 (이력번호, 감독번호, 영화번호)
VALUES (
    (SELECT nvl(MAX(이력번호), 0) + 1 FROM 감독이력),
    (SELECT 감독번호 FROM 감독 WHERE 감독이름 = '소토자키 하루오'),
    (SELECT seq FROM tableMovie WHERE kname = '귀멸의 칼날: 인연의 기적, 그리고 합동 강화 훈련으로')
);
INSERT INTO 감독이력 (이력번호, 감독번호, 영화번호)
VALUES (
    (SELECT nvl(MAX(이력번호), 0) + 1 FROM 감독이력),
    (SELECT 감독번호 FROM 감독 WHERE 감독이름 = '박영주'),
    (SELECT seq FROM tableMovie WHERE kname = '시민덕희')
);

INSERT INTO 감독이력 (이력번호, 감독번호, 영화번호)
VALUES (
    (SELECT nvl(MAX(이력번호), 0) + 1 FROM 감독이력),
    (SELECT 감독번호 FROM 감독 WHERE 감독이름 = '김용균'),
    (SELECT seq FROM tableMovie WHERE kname = '소풍')
);

INSERT INTO 감독이력 (이력번호, 감독번호, 영화번호)
VALUES (
    (SELECT nvl(MAX(이력번호), 0) + 1 FROM 감독이력),
    (SELECT 감독번호 FROM 감독 WHERE 감독이름 = '김덕민'),
    (SELECT seq FROM tableMovie WHERE kname = '도그데이즈')
);
INSERT INTO 감독이력 (이력번호, 감독번호, 영화번호)
VALUES (
    (SELECT nvl(MAX(이력번호), 0) + 1 FROM 감독이력),
    (SELECT 감독번호 FROM 감독 WHERE 감독이름 = '알란 포맨'),
    (SELECT seq FROM tableMovie WHERE kname = '아기상어 극장판: 사이렌 스톤의 비밀')
);
INSERT INTO 감독이력 (이력번호, 감독번호, 영화번호)
VALUES (
    (SELECT nvl(MAX(이력번호), 0) + 1 FROM 감독이력),
    (SELECT 감독번호 FROM 감독 WHERE 감독이름 = '하준원'),
    (SELECT seq FROM tableMovie WHERE kname = '데드맨')
);
INSERT INTO 감독이력 (이력번호, 감독번호, 영화번호)
VALUES (
    (SELECT nvl(MAX(이력번호), 0) + 1 FROM 감독이력),
    (SELECT 감독번호 FROM 감독 WHERE 감독이름 = '매튜 본'),
    (SELECT seq FROM tableMovie WHERE kname = '아가일')
);
INSERT INTO 감독이력 (이력번호, 감독번호, 영화번호)
VALUES (
    (SELECT nvl(MAX(이력번호), 0) + 1 FROM 감독이력),
    (SELECT 감독번호 FROM 감독 WHERE 감독이름 = '네스토르 F. 데니스'),
    (SELECT seq FROM tableMovie WHERE kname = '스노우 퍼핀즈')
);
INSERT INTO 감독이력 (이력번호, 감독번호, 영화번호)
VALUES (
    (SELECT nvl(MAX(이력번호), 0) + 1 FROM 감독이력),
    (SELECT 감독번호 FROM 감독 WHERE 감독이름 = '알레한드로 몬테베르드'),
    (SELECT seq FROM tableMovie WHERE kname = '사운드 오브 프리덤')
);
INSERT INTO 감독이력 (이력번호, 감독번호, 영화번호)
VALUES (
    (SELECT nvl(MAX(이력번호), 0) + 1 FROM 감독이력),
    (SELECT 감독번호 FROM 감독 WHERE 감독이름 = '쥐스틴 트리에'),
    (SELECT seq FROM tableMovie WHERE kname = '추락의 해부')
);
INSERT INTO 감독이력 (이력번호, 감독번호, 영화번호)
VALUES (
    (SELECT nvl(MAX(이력번호), 0) + 1 FROM 감독이력),
    (SELECT 감독번호 FROM 감독 WHERE 감독이름 = '홍인표'),
    (SELECT seq FROM tableMovie WHERE kname = 'DMZ 동물 특공대')
);
INSERT INTO 감독이력 (이력번호, 감독번호, 영화번호)
VALUES (
    (SELECT nvl(MAX(이력번호), 0) + 1 FROM 감독이력),
    (SELECT 감독번호 FROM 감독 WHERE 감독이름 = '루오 루오'),
    (SELECT seq FROM tableMovie WHERE kname = '우견니')
);
INSERT INTO 감독이력 (이력번호, 감독번호, 영화번호)
VALUES (
    (SELECT nvl(MAX(이력번호), 0) + 1 FROM 감독이력),
    (SELECT 감독번호 FROM 감독 WHERE 감독이름 = '알렉산더 페인'),
    (SELECT seq FROM tableMovie WHERE kname = '바튼 아카데미')
);
INSERT INTO 감독이력 (이력번호, 감독번호, 영화번호)
VALUES (
    (SELECT nvl(MAX(이력번호), 0) + 1 FROM 감독이력),
    (SELECT 감독번호 FROM 감독 WHERE 감독이름 = '고레에다 히로카즈'),
    (SELECT seq FROM tableMovie WHERE kname = '괴물')
);
INSERT INTO 감독이력 (이력번호, 감독번호, 영화번호)
VALUES (
    (SELECT nvl(MAX(이력번호), 0) + 1 FROM 감독이력),
    (SELECT 감독번호 FROM 감독 WHERE 감독이름 = '로랑 브루'),
    (SELECT seq FROM tableMovie WHERE kname = '정글번치 : 월드투어')
);
INSERT INTO 감독이력 (이력번호, 감독번호, 영화번호)
VALUES (
    (SELECT nvl(MAX(이력번호), 0) + 1 FROM 감독이력),
    (SELECT 감독번호 FROM 감독 WHERE 감독이름 = '야닉 물랑'),
    (SELECT seq FROM tableMovie WHERE kname = '정글번치 : 월드투어')
);
INSERT INTO 감독이력 (이력번호, 감독번호, 영화번호)
VALUES (
    (SELECT nvl(MAX(이력번호), 0) + 1 FROM 감독이력),
    (SELECT 감독번호 FROM 감독 WHERE 감독이름 = '브누와 솜빌'),
    (SELECT seq FROM tableMovie WHERE kname = '정글번치 : 월드투어')
);
INSERT INTO 감독이력 (이력번호, 감독번호, 영화번호)
VALUES (
    (SELECT nvl(MAX(이력번호), 0) + 1 FROM 감독이력),
    (SELECT 감독번호 FROM 감독 WHERE 감독이름 = '길 정'),
    (SELECT seq FROM tableMovie WHERE kname = '이프온리')
);
INSERT INTO 감독이력 (이력번호, 감독번호, 영화번호)
VALUES (
    (SELECT nvl(MAX(이력번호), 0) + 1 FROM 감독이력),
    (SELECT 감독번호 FROM 감독 WHERE 감독이름 = '왕가위'),
    (SELECT seq FROM tableMovie WHERE kname = '주경삼림 리마스터링')
);
INSERT INTO 감독이력 (이력번호, 감독번호, 영화번호)
VALUES (
    (SELECT nvl(MAX(이력번호), 0) + 1 FROM 감독이력),
    (SELECT 감독번호 FROM 감독 WHERE 감독이름 = '김성수'),
    (SELECT seq FROM tableMovie WHERE kname = '서울의 봄')
);
INSERT INTO 감독이력 (이력번호, 감독번호, 영화번호)
VALUES (
    (SELECT nvl(MAX(이력번호), 0) + 1 FROM 감독이력),
    (SELECT 감독번호 FROM 감독 WHERE 감독이름 = '미키 타카히로'),
    (SELECT seq FROM tableMovie WHERE kname = '오늘 밤, 세계에서 이 사랑이 사라진다 해도')
);
INSERT INTO 감독이력 (이력번호, 감독번호, 영화번호)
VALUES (
    (SELECT nvl(MAX(이력번호), 0) + 1 FROM 감독이력),
    (SELECT 감독번호 FROM 감독 WHERE 감독이름 = '왕가위'),
    (SELECT seq FROM tableMovie WHERE kname = '화양연화')
);
INSERT INTO 감독이력 (이력번호, 감독번호, 영화번호)
VALUES (
    (SELECT nvl(MAX(이력번호), 0) + 1 FROM 감독이력),
    (SELECT 감독번호 FROM 감독 WHERE 감독이름 = '하야카와 치에'),
    (SELECT seq FROM tableMovie WHERE kname = '플랜 75')
);
INSERT INTO 감독이력 (이력번호, 감독번호, 영화번호)
VALUES (
    (SELECT nvl(MAX(이력번호), 0) + 1 FROM 감독이력),
    (SELECT 감독번호 FROM 감독 WHERE 감독이름 = '김지선'),
    (SELECT seq FROM tableMovie WHERE kname = '에스파 : 퍼스트 페이지')
);
INSERT INTO 감독이력 (이력번호, 감독번호, 영화번호)
VALUES (
    (SELECT nvl(MAX(이력번호), 0) + 1 FROM 감독이력),
    (SELECT 감독번호 FROM 감독 WHERE 감독이름 = '조현정'),
    (SELECT seq FROM tableMovie WHERE kname = '에스파 : 퍼스트 페이지')
);
INSERT INTO 감독이력 (이력번호, 감독번호, 영화번호)
VALUES (
    (SELECT nvl(MAX(이력번호), 0) + 1 FROM 감독이력),
    (SELECT 감독번호 FROM 감독 WHERE 감독이름 = '오네 히토시'),
    (SELECT seq FROM tableMovie WHERE kname = '신차원! 짱구는 못말려 더 무비 초능력 대결전 ~날아라 수제김밥~')
);
INSERT INTO 감독이력 (이력번호, 감독번호, 영화번호)
VALUES (
    (SELECT nvl(MAX(이력번호), 0) + 1 FROM 감독이력),
    (SELECT 감독번호 FROM 감독 WHERE 감독이름 = '크리스 벅'),
    (SELECT seq FROM tableMovie WHERE kname = '위시')
);
INSERT INTO 감독이력 (이력번호, 감독번호, 영화번호)
VALUES (
    (SELECT nvl(MAX(이력번호), 0) + 1 FROM 감독이력),
    (SELECT 감독번호 FROM 감독 WHERE 감독이름 = '폰 비라선손'),
    (SELECT seq FROM tableMovie WHERE kname = '위시')
);
INSERT INTO 감독이력 (이력번호, 감독번호, 영화번호)
VALUES (
    (SELECT nvl(MAX(이력번호), 0) + 1 FROM 감독이력),
    (SELECT 감독번호 FROM 감독 WHERE 감독이름 = '김다민'),
    (SELECT seq FROM tableMovie WHERE kname = '막걸리가 알려줄거야')
);
INSERT INTO 감독이력 (이력번호, 감독번호, 영화번호)
VALUES (
    (SELECT nvl(MAX(이력번호), 0) + 1 FROM 감독이력),
    (SELECT 감독번호 FROM 감독 WHERE 감독이름 = '왕가위'),
    (SELECT seq FROM tableMovie WHERE kname = '해피 투게더 리마스터링')
);
INSERT INTO 감독이력 (이력번호, 감독번호, 영화번호)
VALUES (
    (SELECT nvl(MAX(이력번호), 0) + 1 FROM 감독이력),
    (SELECT 감독번호 FROM 감독 WHERE 감독이름 = '민환기'),
    (SELECT seq FROM tableMovie WHERE kname = '길위에 김대중')
);
/*
INSERT INTO 감독이력 (이력번호, 감독번호, 영화번호)
VALUES (
    (SELECT nvl(MAX(이력번호), 0) + 1 FROM 감독이력),
    (SELECT 감독번호 FROM 감독 WHERE 감독이름 = ''),
    (SELECT seq FROM tableMovie WHERE kname = '극장판 아이돌리쉬 세븐; LIVE 4bit BEYOND THE PERiOD DAY 2')
);
*/
INSERT INTO 감독이력 (이력번호, 감독번호, 영화번호)
VALUES (
    (SELECT nvl(MAX(이력번호), 0) + 1 FROM 감독이력),
    (SELECT 감독번호 FROM 감독 WHERE 감독이름 = '최동훈'),
    (SELECT seq FROM tableMovie WHERE kname = '외계+인 2부')
);
INSERT INTO 감독이력 (이력번호, 감독번호, 영화번호)
VALUES (
    (SELECT nvl(MAX(이력번호), 0) + 1 FROM 감독이력),
    (SELECT 감독번호 FROM 감독 WHERE 감독이름 = '드니 빌뇌브'),
    (SELECT seq FROM tableMovie WHERE kname = '블레이드 러너 2049')
);
INSERT INTO 감독이력 (이력번호, 감독번호, 영화번호)
VALUES (
    (SELECT nvl(MAX(이력번호), 0) + 1 FROM 감독이력),
    (SELECT 감독번호 FROM 감독 WHERE 감독이름 = '벤자민 레너'),
    (SELECT seq FROM tableMovie WHERE kname = '인투 더 월드')
);
INSERT INTO 감독이력 (이력번호, 감독번호, 영화번호)
VALUES (
    (SELECT nvl(MAX(이력번호), 0) + 1 FROM 감독이력),
    (SELECT 감독번호 FROM 감독 WHERE 감독이름 = '최이현'),
    (SELECT seq FROM tableMovie WHERE kname = '장인과 사위')
);
INSERT INTO 감독이력 (이력번호, 감독번호, 영화번호)
VALUES (
    (SELECT nvl(MAX(이력번호), 0) + 1 FROM 감독이력),
    (SELECT 감독번호 FROM 감독 WHERE 감독이름 = '켄 로치'),
    (SELECT seq FROM tableMovie WHERE kname = '나의 올드 오크')
);
INSERT INTO 감독이력 (이력번호, 감독번호, 영화번호)
VALUES (
    (SELECT nvl(MAX(이력번호), 0) + 1 FROM 감독이력),
    (SELECT 감독번호 FROM 감독 WHERE 감독이름 = '이노우에 다케히코'),
    (SELECT seq FROM tableMovie WHERE kname = '더 퍼스트 슬램덩크')
);
INSERT INTO 감독이력 (이력번호, 감독번호, 영화번호)
VALUES (
    (SELECT nvl(MAX(이력번호), 0) + 1 FROM 감독이력),
    (SELECT 감독번호 FROM 감독 WHERE 감독이름 = '니시키오리 히로시'),
    (SELECT seq FROM tableMovie WHERE kname = '극장판 아이돌리쉬 세븐; LIVE 4bit BEYOND THE PERiOD DAY 1')
);
INSERT INTO 감독이력 (이력번호, 감독번호, 영화번호)
VALUES (
    (SELECT nvl(MAX(이력번호), 0) + 1 FROM 감독이력),
    (SELECT 감독번호 FROM 감독 WHERE 감독이름 = '야마모토 켄스케'),
    (SELECT seq FROM tableMovie WHERE kname = '극장판 아이돌리쉬 세븐; LIVE 4bit BEYOND THE PERiOD DAY 1')
);
INSERT INTO 감독이력 (이력번호, 감독번호, 영화번호)
VALUES (
    (SELECT nvl(MAX(이력번호), 0) + 1 FROM 감독이력),
    (SELECT 감독번호 FROM 감독 WHERE 감독이름 = '윤제완'),
    (SELECT seq FROM tableMovie WHERE kname = '뽀로로 극장판 슈퍼스타 대모험')
);
INSERT INTO 감독이력 (이력번호, 감독번호, 영화번호)
VALUES (
    (SELECT nvl(MAX(이력번호), 0) + 1 FROM 감독이력),
    (SELECT 감독번호 FROM 감독 WHERE 감독이름 = '김성민'),
    (SELECT seq FROM tableMovie WHERE kname = '뽀로로 극장판 슈퍼스타 대모험')
);
INSERT INTO 감독이력 (이력번호, 감독번호, 영화번호)
VALUES (
    (SELECT nvl(MAX(이력번호), 0) + 1 FROM 감독이력),
    (SELECT 감독번호 FROM 감독 WHERE 감독이름 = '사카모토 준지'),
    (SELECT seq FROM tableMovie WHERE kname = '오키쿠와 세계')
);
INSERT INTO 감독이력 (이력번호, 감독번호, 영화번호)
VALUES (
    (SELECT nvl(MAX(이력번호), 0) + 1 FROM 감독이력),
    (SELECT 감독번호 FROM 감독 WHERE 감독이름 = '토드 헤인즈'),
    (SELECT seq FROM tableMovie WHERE kname = '메이 디셈버')
);
INSERT INTO 감독이력 (이력번호, 감독번호, 영화번호)
VALUES (
    (SELECT nvl(MAX(이력번호), 0) + 1 FROM 감독이력),
    (SELECT 감독번호 FROM 감독 WHERE 감독이름 = '헤더 윌크'),
    (SELECT seq FROM tableMovie WHERE kname = '크레센도 반 클라이번')
);
INSERT INTO 감독이력 (이력번호, 감독번호, 영화번호)
VALUES (
    (SELECT nvl(MAX(이력번호), 0) + 1 FROM 감독이력),
    (SELECT 감독번호 FROM 감독 WHERE 감독이름 = '크리스토퍼 놀란'),
    (SELECT seq FROM tableMovie WHERE kname = '오펜하이머')
);
INSERT INTO 감독이력 (이력번호, 감독번호, 영화번호)
VALUES (
    (SELECT nvl(MAX(이력번호), 0) + 1 FROM 감독이력),
    (SELECT 감독번호 FROM 감독 WHERE 감독이름 = '오오모리 타카히'),
    (SELECT seq FROM tableMovie WHERE kname = '영화 스미코구라시-푸른 달밤의 마법의 아이')
);
INSERT INTO 감독이력 (이력번호, 감독번호, 영화번호)
VALUES (
    (SELECT nvl(MAX(이력번호), 0) + 1 FROM 감독이력),
    (SELECT 감독번호 FROM 감독 WHERE 감독이름 = '킹 비더'),
    (SELECT seq FROM tableMovie WHERE kname = '전쟁과 평화')
);
INSERT INTO 감독이력 (이력번호, 감독번호, 영화번호)
VALUES (
    (SELECT nvl(MAX(이력번호), 0) + 1 FROM 감독이력),
    (SELECT 감독번호 FROM 감독 WHERE 감독이름 = '안노 히데아키'),
    (SELECT seq FROM tableMovie WHERE kname = '엔드 오브 에반리온')
);
INSERT INTO 감독이력 (이력번호, 감독번호, 영화번호)
VALUES (
    (SELECT nvl(MAX(이력번호), 0) + 1 FROM 감독이력),
    (SELECT 감독번호 FROM 감독 WHERE 감독이름 = '매들린 개'),
    (SELECT seq FROM tableMovie WHERE kname = '비욘드 유토피')
);
INSERT INTO 감독이력 (이력번호, 감독번호, 영화번호)
VALUES (
    (SELECT nvl(MAX(이력번호), 0) + 1 FROM 감독이력),
    (SELECT 감독번호 FROM 감독 WHERE 감독이름 = '존 건'),
    (SELECT seq FROM tableMovie WHERE kname = '예수는 역사다')
);
INSERT INTO 감독이력 (이력번호, 감독번호, 영화번호)
VALUES (
    (SELECT nvl(MAX(이력번호), 0) + 1 FROM 감독이력),
    (SELECT 감독번호 FROM 감독 WHERE 감독이름 = '김상철'),
    (SELECT seq FROM tableMovie WHERE kname = '부활 그 소망 ')
);
INSERT INTO 감독이력 (이력번호, 감독번호, 영화번호)
VALUES (
    (SELECT nvl(MAX(이력번호), 0) + 1 FROM 감독이력),
    (SELECT 감독번호 FROM 감독 WHERE 감독이름 = '김한민'),
    (SELECT seq FROM tableMovie WHERE kname = '노량: 죽음의 바다')
);
INSERT INTO 감독이력 (이력번호, 감독번호, 영화번호)
VALUES (
    (SELECT nvl(MAX(이력번호), 0) + 1 FROM 감독이력),
    (SELECT 감독번호 FROM 감독 WHERE 감독이름 = '미즈시마 츠토무'),
    (SELECT seq FROM tableMovie WHERE kname = '걸즈 앤 판처 최종장 제4화')
);


--delete from 감독이력;
--drop table 감독이력;
