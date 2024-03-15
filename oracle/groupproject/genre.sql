DROP TABLE TABLEMGENRE;
DROP TABLE TABLEGENRE;


CREATE TABLE TABLEGENRE(
    SEQ NUMBER PRIMARY KEY,
    gname VARCHAR2(30) UNIQUE NOT NULL
);

INSERT INTO TABLEGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEGENRE), '판타지');
INSERT INTO TABLEGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEGENRE), '드라마');
INSERT INTO TABLEGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEGENRE), '애니메이션');
INSERT INTO TABLEGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEGENRE), '범죄');
INSERT INTO TABLEGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEGENRE), '코미디');
INSERT INTO TABLEGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEGENRE), '액션');
INSERT INTO TABLEGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEGENRE), '어드벤처');
INSERT INTO TABLEGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEGENRE), '실화');
INSERT INTO TABLEGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEGENRE), '스릴러');
INSERT INTO TABLEGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEGENRE), '멜로');
INSERT INTO TABLEGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEGENRE), '로맨스');
INSERT INTO TABLEGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEGENRE), '미스터리');
INSERT INTO TABLEGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEGENRE), '멜로 로멘스');
INSERT INTO TABLEGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEGENRE), '뮤직');
INSERT INTO TABLEGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEGENRE), '가족');
INSERT INTO TABLEGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEGENRE), 'SF');
INSERT INTO TABLEGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEGENRE), '멜로·로맨스');
INSERT INTO TABLEGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEGENRE), '다큐멘터리');
INSERT INTO TABLEGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEGENRE), '전쟁');


CREATE TABLE TABLEMGENRE(
    SEQ NUMBER PRIMARY KEY,
    movieid NUMBER NOT NULL,
    genreid NUMBER NOT NULL,
    CONSTRAINT talbegenre_genre_seq FOREIGN KEY(genreid) REFERENCES TABLEGENRE(seq),
    CONSTRAINT talbegenre_movie_seq FOREIGN KEY(movieid) REFERENCES tableMovie(seq)
);

INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM tableMovie WHERE kname = '웡카'), (SELECT seq FROM TABLEGENRE WHERE gname = '판타지'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM tableMovie WHERE kname = '웡카'), (SELECT seq FROM TABLEGENRE WHERE gname = '드라마'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM tableMovie WHERE kname = '웡카'), (SELECT seq FROM TABLEGENRE WHERE gname = '드라마'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '플랜 75'), (SELECT seq FROM TABLEGENRE WHERE gname = '드라마'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '에스파 : 퍼스트 페이지'), (SELECT seq FROM TABLEGENRE WHERE gname = '뮤직'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '신차원! 짱구는 못말려 더 무비 초능력 대결전 ~날아라 수제김밥~'), (SELECT seq FROM TABLEGENRE WHERE gname = '코미디'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '신차원! 짱구는 못말려 더 무비 초능력 대결전 ~날아라 수제김밥~'), (SELECT seq FROM TABLEGENRE WHERE gname = '어드벤처'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '신차원! 짱구는 못말려 더 무비 초능력 대결전 ~날아라 수제김밥~'), (SELECT seq FROM TABLEGENRE WHERE gname = '애니메이션'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '신차원! 짱구는 못말려 더 무비 초능력 대결전 ~날아라 수제김밥~'), (SELECT seq FROM TABLEGENRE WHERE gname = '가족'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '위시'), (SELECT seq FROM TABLEGENRE WHERE gname = '애니메이션'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '막걸리가 알려줄거야'), (SELECT seq FROM TABLEGENRE WHERE gname = '드라마'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '막걸리가 알려줄거야'), (SELECT seq FROM TABLEGENRE WHERE gname = 'SF'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '막걸리가 알려줄거야'), (SELECT seq FROM TABLEGENRE WHERE gname = '어드벤처'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '막걸리가 알려줄거야'), (SELECT seq FROM TABLEGENRE WHERE gname = '코미디'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '해피 투게더 리마스터링'), (SELECT seq FROM TABLEGENRE WHERE gname = '멜로'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '해피 투게더 리마스터링'), (SELECT seq FROM TABLEGENRE WHERE gname = '로맨스'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '해피 투게더 리마스터링'), (SELECT seq FROM TABLEGENRE WHERE gname = '드라마'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '길위에 김대중'), (SELECT seq FROM TABLEGENRE WHERE gname = '다큐멘터리'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '극장판 아이돌리쉬 세븐; LIVE 4bit BEYOND THE PERiOD DAY 2'), (SELECT seq FROM TABLEGENRE WHERE gname = '애니메이션'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '블레이드 러너 2049'), (SELECT seq FROM TABLEGENRE WHERE gname = 'SF'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '인투 더 월드'), (SELECT seq FROM TABLEGENRE WHERE gname = 'SF'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '장인과 사위'), (SELECT seq FROM TABLEGENRE WHERE gname = '드라마'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '장인과 사위'), (SELECT seq FROM TABLEGENRE WHERE gname = '코미디'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '나의 올드 오크'), (SELECT seq FROM TABLEGENRE WHERE gname = '드라마'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '나의 올드 오크'), (SELECT seq FROM TABLEGENRE WHERE gname = '코미디'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '더 퍼스트 슬램덩크'), (SELECT seq FROM TABLEGENRE WHERE gname = '애니메이션'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '극장판 아이돌리쉬 세븐; LIVE 4bit BEYOND THE PERiOD DAY 1'), (SELECT seq FROM TABLEGENRE WHERE gname = '애니메이션'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '뽀로로 극장판 슈퍼스타 대모험'), (SELECT seq FROM TABLEGENRE WHERE gname = '애니메이션'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '오키쿠와 세계'), (SELECT seq FROM TABLEGENRE WHERE gname = '드라마'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '메이 디셈버'), (SELECT seq FROM TABLEGENRE WHERE gname = '드라마'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '크레센도 반 클라이번'), (SELECT seq FROM TABLEGENRE WHERE gname = '다큐멘터리'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '오펜하이머'), (SELECT seq FROM TABLEGENRE WHERE gname = '스릴러'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '오펜하이머'), (SELECT seq FROM TABLEGENRE WHERE gname = '드라마'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '영화 스미코구라시-푸른 달밤의 마법의 아이'), (SELECT seq FROM TABLEGENRE WHERE gname = '애니메이션'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '전쟁과 평화'), (SELECT seq FROM TABLEGENRE WHERE gname = '드라마'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '전쟁과 평화'), (SELECT seq FROM TABLEGENRE WHERE gname = '멜로'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '전쟁과 평화'), (SELECT seq FROM TABLEGENRE WHERE gname = '로맨스'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '전쟁과 평화'), (SELECT seq FROM TABLEGENRE WHERE gname = '전쟁'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '엔드 오브 에반리온'), (SELECT seq FROM TABLEGENRE WHERE gname = '판타지'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '엔드 오브 에반리온'), (SELECT seq FROM TABLEGENRE WHERE gname = '액션'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '엔드 오브 에반리온'), (SELECT seq FROM TABLEGENRE WHERE gname = '애니메이션'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '엔드 오브 에반리온'), (SELECT seq FROM TABLEGENRE WHERE gname = 'SF'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '비욘드 유토피'), (SELECT seq FROM TABLEGENRE WHERE gname = '다큐멘터리'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '귀멸의 칼날: 인연의 기적, 그리고 합동 강화 훈련으로'), (SELECT seq FROM TABLEGENRE WHERE gname = '애니메이션'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '시민덕희'), (SELECT seq FROM TABLEGENRE WHERE gname = '드라마'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '소풍'), (SELECT seq FROM TABLEGENRE WHERE gname = '드라마'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '도그데이즈'), (SELECT seq FROM TABLEGENRE WHERE gname = '드라마'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '아기상어 극장판: 사이렌 스톤의 비밀'), (SELECT seq FROM TABLEGENRE WHERE gname = '애니메이션'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '데드맨'), (SELECT seq FROM TABLEGENRE WHERE gname = '범죄'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '아가일'), (SELECT seq FROM TABLEGENRE WHERE gname = '코미디'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '아가일'), (SELECT seq FROM TABLEGENRE WHERE gname = '액션'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '스노우 퍼핀즈'), (SELECT seq FROM TABLEGENRE WHERE gname = '어드벤처'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '스노우 퍼핀즈'), (SELECT seq FROM TABLEGENRE WHERE gname = '액션'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '사운드 오브 프리덤'), (SELECT seq FROM TABLEGENRE WHERE gname = '실화'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '추락의 해부'), (SELECT seq FROM TABLEGENRE WHERE gname = '스릴러'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '추락의 해부'), (SELECT seq FROM TABLEGENRE WHERE gname = '드라마'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = 'DMZ 동물 특공대'), (SELECT seq FROM TABLEGENRE WHERE gname = '애니메이션'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '우견니'), (SELECT seq FROM TABLEGENRE WHERE gname = '멜로'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '우견니'), (SELECT seq FROM TABLEGENRE WHERE gname = '로맨스'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '바튼 아카데미'), (SELECT seq FROM TABLEGENRE WHERE gname = '코미디'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '괴물'), (SELECT seq FROM TABLEGENRE WHERE gname = '미스터리'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '괴물'), (SELECT seq FROM TABLEGENRE WHERE gname = '드라마'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '정글번치 : 월드투어'), (SELECT seq FROM TABLEGENRE WHERE gname = '애니메이션'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '이프온리'), (SELECT seq FROM TABLEGENRE WHERE gname = '판타지'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '이프온리'), (SELECT seq FROM TABLEGENRE WHERE gname = '멜로 로멘스'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '주경삼림 리마스터링'), (SELECT seq FROM TABLEGENRE WHERE gname = '미스터리'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '주경삼림 리마스터링'), (SELECT seq FROM TABLEGENRE WHERE gname = '멜로 로멘스'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '주경삼림 리마스터링'), (SELECT seq FROM TABLEGENRE WHERE gname = '드라마'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '서울의 봄'), (SELECT seq FROM TABLEGENRE WHERE gname = '드라마'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '오늘 밤, 세계에서 이 사랑이 사라진다 해도'), (SELECT seq FROM TABLEGENRE WHERE gname = '멜로 로멘스'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '화양연화'), (SELECT seq FROM TABLEGENRE WHERE gname = '멜로 로멘스'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '화양연화'), (SELECT seq FROM TABLEGENRE WHERE gname = '드라마'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '예수는 역사다'), (SELECT seq FROM TABLEGENRE WHERE gname = '드라마'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '부활 그 소망 '), (SELECT seq FROM TABLEGENRE WHERE gname = '다큐멘터리'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '노량: 죽음의 바다'), (SELECT seq FROM TABLEGENRE WHERE gname = '액션'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '노량: 죽음의 바다'), (SELECT seq FROM TABLEGENRE WHERE gname = '드라마'));
INSERT INTO TABLEMGENRE VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM TABLEMGENRE), (SELECT seq FROM TABLEMOVIE WHERE kname = '걸즈 앤 판처 최종장 제4화'), (SELECT seq FROM TABLEGENRE WHERE gname = '애니메이션'));
