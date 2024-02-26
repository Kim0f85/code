--DROP TABLE tableActing;
--DROP TABLE tableActorMain;
--DROP TABLE tableActor;

-- 배우
--DROP TABLE tableActor;

CREATE TABLE tableActor (
    seq NUMBER PRIMARY KEY,         -- 배우 번호(PK)
    name VARCHAR2(50) NOT NULL      -- 배우 이름
);

INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '티모테 샬라메');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '칼라 레인');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '올리비아 콜맨');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '톰 데이비스');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '휴 그랜트');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '샐리 호킨스');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '데이빗 필즈');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '이호');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '하나에 나츠키');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '키토 아카리');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '하나자와 카나');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '카와니시 켄고');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '라미란');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '공명');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '염혜란');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '박병은');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '장윤주');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '이무생');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '안은진');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '정지호');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '나문희');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '김영옥');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '박근형');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '류승수');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '윤여정');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '유해진');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '김윤진');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '정성화');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '김서형');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '다니엘 헤니');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '이현우');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '탕준상');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '윤채나');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '장예나');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '전태열');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '희승');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '제이');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '제이크');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '성훈');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '선우');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '정원');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '니키');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '쓰복만');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '조진웅');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '김희애');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '이수경');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '헨리 카빌');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '브라이스 댈러스 하워드');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '샘 록웰');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '브라이언 크랜스톤');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '캐서린 오하라');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '두아 리파');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '아리아나 데보스');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '존 시나');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '사무엘 L. 잭슨');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '조니 뎁');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '산드라 휠러');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '스완 아를로');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '밀로 마차도 그라너');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '앙투안 라이나르츠');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '사뮤엘 테이');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '김새해');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '조경이');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '황창영');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '이소은');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '박준형');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '서약함');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '이문한');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '폴 지아마티');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '더바인 조이 랜돌프');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '도미닉 세사');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '안도 사쿠라');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '나가야마 에이타');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '쿠로카와 소야');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '히이라기 히나타');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '타카하타 미츠키');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '카쿠타 아키히로');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '나카무라 시도');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '다나카 유코');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '석승훈');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '정해은');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '장병관');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '박시윤');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '김용');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '김다올');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '서정익');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '제니퍼 러브 휴이트');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '폴 니콜스');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '톰 윌킨슨');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '루시 대븐포트');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '다이아나 하드캐슬');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '로이 샘슨');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '임청하');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '양조위');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '왕페이');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '금성무');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '주가령');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '황정민');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '정우성');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '이성민');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '박해준');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '김성균');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '정만식');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '정해인');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '이준혁');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '미치에다 슌스케');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '후쿠모토 리코');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '후루카와 코토네');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '마츠모토 호노카');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '장만옥');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '소병림');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '반적화');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '뇌진');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '손가군');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '장요양');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '바이쇼 치에코');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '이소무라 하야토');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '카와이 유미');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '스테파니 아리안');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '카리나');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '지젤');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '윈터');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '닝닝');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '크리스 파인');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '알란 터딕');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '박나은');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '박효주');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '김희원');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '김지훈');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '장국영');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '장첸');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '그레고리 데이튼');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '김대중');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '오노 켄쇼');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '하타노 와타루');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '호시 소이치로');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '히로세 유야');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '마스다 코시키');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '시라이 유스케');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '요나가 츠바사');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '켄');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '아베 아츠시');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '에구치 타쿠야');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '류준열');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '김태리');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '김우빈');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '이하늬');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '염정아');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '조우진');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '김의성');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '진선규');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '신정근');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '윤경호');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '라이언 고슬링');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '해리슨 포드');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '아나 데 아르마스');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '실비아 혹스');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '자레드 레토');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '맥켄지 데이비스');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '로빈 라이트');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '데이브 바티스타');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '레니 제임스');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '쿠마일 난지아니');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '엘리자베스 뱅크스');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '아콰피나');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '키건 마이클 키');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '캐롤 케인');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '동방우');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '지대한');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '이혁');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '공정환');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '김병옥');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '데이브 터너');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '에블라 마리');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '로렌조 맥거번 자이니');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '데비 허니우드');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '트레버 폭스');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '콜 테이트');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '크리스 고츠');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '나카무라 슈고');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '카사마 준');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '카미오 신이치로');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '키무라 스바루');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '미야케 켄타');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '엄상현');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '장민혁');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '신용우');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '강수진');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '최낙윤');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '쿠로키 하루');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '이케마츠 소스케');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '칸이치로');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '마키 쿠로도');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '사토 코이치');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '이시바시 렌지');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '나탈리 포트만');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '줄리안 무어');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '찰스 멜튼');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '임윤찬');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '안나 게뉴시네');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '드미트리 초니');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '마린 알솝');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '킬리언 머피');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '에밀리 블런트');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '맷 데이먼');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '로버트 다우니 주니어');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '플로렌스 퓨');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '조쉬 하트넷');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '케이시 애플렉');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '라미 말렉');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '케네스 브래너');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '하야시바라 메구미');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '후치가미 마이');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '카야노 아이');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '오자키 마미');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '나카가미 이쿠미');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '이구치 유카');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '후쿠엔 미사토');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '김윤석');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '백윤식');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '정재영');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '허준호');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '김성규');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '이규형');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '최덕문');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '안보현');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '박명훈');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '박훈');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '문정희');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '마이크 보겔');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '에리카 크리스텐슨');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '페이 더너웨이');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '로버트 포스터');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '박성영');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '전숙경');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '오드리 헵번');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '헨리 폰다');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '멜 페러');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '비토리오 가스먼');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '허버트 롬');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '제레미 브렛');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '제임스 카비젤');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '빌 캠프');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '윤제완');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '김성민');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '이시훈');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '소연');
INSERT INTO tableActor VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActor), '마스다 토시키');

SELECT * FROM tableActor;


--DROP TABLE tableActing;
-- 출현
CREATE TABLE tableActing (
    seq NUMBER PRIMARY KEY,          -- 출현 번호(PK)
    aseq NUMBER NOT NULL,                     -- 배우 번호
    mseq NUMBER NOT NULL,                      -- 영화 번호
    CONSTRAINT actor_seq FOREIGN KEY(aseq) REFERENCES tableActor(seq),
    CONSTRAINT movie_seq FOREIGN KEY(mseq) REFERENCES tableMovie(seq)
);

INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '티모테 샬라메'), (SELECT seq FROM tableMovie WHERE kname = '웡카'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '칼라 레인'), (SELECT seq FROM tableMovie WHERE kname = '웡카'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '올리비아 콜맨'), (SELECT seq FROM tableMovie WHERE kname = '웡카'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '톰 데이비스'), (SELECT seq FROM tableMovie WHERE kname = '웡카'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '휴 그랜트'), (SELECT seq FROM tableMovie WHERE kname = '웡카'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '샐리 호킨스'), (SELECT seq FROM tableMovie WHERE kname = '웡카'));

INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '데이빗 필즈'), (SELECT seq FROM tableMovie WHERE kname = '건국전쟁'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '이호'), (SELECT seq FROM tableMovie WHERE kname = '건국전쟁'));

INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '하나에 나츠키'), (SELECT seq FROM tableMovie WHERE kname = '귀멸의 칼날: 인연의 기적, 그리고 합동 강화 훈련으로'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '키토 아카리'), (SELECT seq FROM tableMovie WHERE kname = '귀멸의 칼날: 인연의 기적, 그리고 합동 강화 훈련으로'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '하나자와 카나'), (SELECT seq FROM tableMovie WHERE kname = '귀멸의 칼날: 인연의 기적, 그리고 합동 강화 훈련으로'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '카와니시 켄고'), (SELECT seq FROM tableMovie WHERE kname = '귀멸의 칼날: 인연의 기적, 그리고 합동 강화 훈련으로'));

INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '라미란'), (SELECT seq FROM tableMovie WHERE kname = '시민덕희'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '공명'), (SELECT seq FROM tableMovie WHERE kname = '시민덕희'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '염혜란'), (SELECT seq FROM tableMovie WHERE kname = '시민덕희'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '박병은'), (SELECT seq FROM tableMovie WHERE kname = '시민덕희'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '장윤주'), (SELECT seq FROM tableMovie WHERE kname = '시민덕희'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '이무생'), (SELECT seq FROM tableMovie WHERE kname = '시민덕희'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '안은진'), (SELECT seq FROM tableMovie WHERE kname = '시민덕희'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '정지호'), (SELECT seq FROM tableMovie WHERE kname = '시민덕희'));

INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '나문희'), (SELECT seq FROM tableMovie WHERE kname = '소풍'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '김영옥'), (SELECT seq FROM tableMovie WHERE kname = '소풍'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '박근형'), (SELECT seq FROM tableMovie WHERE kname = '소풍'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '류승수'), (SELECT seq FROM tableMovie WHERE kname = '소풍'));

INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '윤여정'), (SELECT seq FROM tableMovie WHERE kname = '도그데이즈'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '유해진'), (SELECT seq FROM tableMovie WHERE kname = '도그데이즈'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '김윤진'), (SELECT seq FROM tableMovie WHERE kname = '도그데이즈'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '정성화'), (SELECT seq FROM tableMovie WHERE kname = '도그데이즈'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '김서형'), (SELECT seq FROM tableMovie WHERE kname = '도그데이즈'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '다니엘 헤니'), (SELECT seq FROM tableMovie WHERE kname = '도그데이즈'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '이현우'), (SELECT seq FROM tableMovie WHERE kname = '도그데이즈'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '탕준상'), (SELECT seq FROM tableMovie WHERE kname = '도그데이즈'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '윤채나'), (SELECT seq FROM tableMovie WHERE kname = '도그데이즈'));

INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '장예나'), (SELECT seq FROM tableMovie WHERE kname = '아기상어 극장판: 사이렌 스톤의 비밀'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '전태열'), (SELECT seq FROM tableMovie WHERE kname = '아기상어 극장판: 사이렌 스톤의 비밀'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '희승'), (SELECT seq FROM tableMovie WHERE kname = '아기상어 극장판: 사이렌 스톤의 비밀'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '제이'), (SELECT seq FROM tableMovie WHERE kname = '아기상어 극장판: 사이렌 스톤의 비밀'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '제이크'), (SELECT seq FROM tableMovie WHERE kname = '아기상어 극장판: 사이렌 스톤의 비밀'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '성훈'), (SELECT seq FROM tableMovie WHERE kname = '아기상어 극장판: 사이렌 스톤의 비밀'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '선우'), (SELECT seq FROM tableMovie WHERE kname = '아기상어 극장판: 사이렌 스톤의 비밀'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '정원'), (SELECT seq FROM tableMovie WHERE kname = '아기상어 극장판: 사이렌 스톤의 비밀'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '니키'), (SELECT seq FROM tableMovie WHERE kname = '아기상어 극장판: 사이렌 스톤의 비밀'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '쓰복만'), (SELECT seq FROM tableMovie WHERE kname = '아기상어 극장판: 사이렌 스톤의 비밀'));

INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '조진웅'), (SELECT seq FROM tableMovie WHERE kname = '데드맨'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '김희애'), (SELECT seq FROM tableMovie WHERE kname = '데드맨'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '이수경'), (SELECT seq FROM tableMovie WHERE kname = '데드맨'));

INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '헨리 카빌'), (SELECT seq FROM tableMovie WHERE kname = '아가일'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '브라이스 댈러스 하워드'), (SELECT seq FROM tableMovie WHERE kname = '아가일'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '샘 록웰'), (SELECT seq FROM tableMovie WHERE kname = '아가일'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '브라이언 크랜스톤'), (SELECT seq FROM tableMovie WHERE kname = '아가일'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '캐서린 오하라'), (SELECT seq FROM tableMovie WHERE kname = '아가일'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '두아 리파'), (SELECT seq FROM tableMovie WHERE kname = '아가일'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '아리아나 데보스'), (SELECT seq FROM tableMovie WHERE kname = '아가일'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '존 시나'), (SELECT seq FROM tableMovie WHERE kname = '아가일'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '사무엘 L. 잭슨'), (SELECT seq FROM tableMovie WHERE kname = '아가일'));

INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '조니 뎁'), (SELECT seq FROM tableMovie WHERE kname = '스노우 퍼핀즈'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '김대중'), (SELECT seq FROM tableMovie WHERE kname = '스노우 퍼핀즈'));

INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '제임스 카비젤'), (SELECT seq FROM tableMovie WHERE kname = '사운드 오브 프리덤'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '빌 캠프'), (SELECT seq FROM tableMovie WHERE kname = '사운드 오브 프리덤'));

INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '산드라 휠러'), (SELECT seq FROM tableMovie WHERE kname = '추락의 해부'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '스완 아를로'), (SELECT seq FROM tableMovie WHERE kname = '추락의 해부'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '밀로 마차도 그라너'), (SELECT seq FROM tableMovie WHERE kname = '추락의 해부'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '앙투안 라이나르츠'), (SELECT seq FROM tableMovie WHERE kname = '추락의 해부'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '사뮤엘 테이'), (SELECT seq FROM tableMovie WHERE kname = '추락의 해부'));

INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '김새해'), (SELECT seq FROM tableMovie WHERE kname = 'DMZ 동물 특공대'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '조경이'), (SELECT seq FROM tableMovie WHERE kname = 'DMZ 동물 특공대'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '황창영'), (SELECT seq FROM tableMovie WHERE kname = 'DMZ 동물 특공대'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '이소은'), (SELECT seq FROM tableMovie WHERE kname = 'DMZ 동물 특공대'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '박준형'), (SELECT seq FROM tableMovie WHERE kname = 'DMZ 동물 특공대'));

INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '서약함'), (SELECT seq FROM tableMovie WHERE kname = '우견니'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '이문한'), (SELECT seq FROM tableMovie WHERE kname = '우견니'));

INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '폴 지아마티'), (SELECT seq FROM tableMovie WHERE kname = '바튼 아카데미'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '더바인 조이 랜돌프'), (SELECT seq FROM tableMovie WHERE kname = '바튼 아카데미'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '도미닉 세사'), (SELECT seq FROM tableMovie WHERE kname = '바튼 아카데미'));

INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '안도 사쿠라'), (SELECT seq FROM tableMovie WHERE kname = '괴물'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '나가야마 에이타'), (SELECT seq FROM tableMovie WHERE kname = '괴물'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '쿠로카와 소야'), (SELECT seq FROM tableMovie WHERE kname = '괴물'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '히이라기 히나타'), (SELECT seq FROM tableMovie WHERE kname = '괴물'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '타카하타 미츠키'), (SELECT seq FROM tableMovie WHERE kname = '괴물'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '카쿠타 아키히로'), (SELECT seq FROM tableMovie WHERE kname = '괴물'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '나카무라 시도'), (SELECT seq FROM tableMovie WHERE kname = '괴물'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '다나카 유코'), (SELECT seq FROM tableMovie WHERE kname = '괴물'));

INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '석승훈'), (SELECT seq FROM tableMovie WHERE kname = '정글번치 : 월드투어'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '정해은'), (SELECT seq FROM tableMovie WHERE kname = '정글번치 : 월드투어'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '장병관'), (SELECT seq FROM tableMovie WHERE kname = '정글번치 : 월드투어'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '박시윤'), (SELECT seq FROM tableMovie WHERE kname = '정글번치 : 월드투어'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '김용'), (SELECT seq FROM tableMovie WHERE kname = '정글번치 : 월드투어'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '김다올'), (SELECT seq FROM tableMovie WHERE kname = '정글번치 : 월드투어'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '서정익'), (SELECT seq FROM tableMovie WHERE kname = '정글번치 : 월드투어'));

INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '제니퍼 러브 휴이트'), (SELECT seq FROM tableMovie WHERE kname = '이프온리'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '폴 니콜스'), (SELECT seq FROM tableMovie WHERE kname = '이프온리'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '톰 윌킨슨'), (SELECT seq FROM tableMovie WHERE kname = '이프온리'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '루시 대븐포트'), (SELECT seq FROM tableMovie WHERE kname = '이프온리'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '다이아나 하드캐슬'), (SELECT seq FROM tableMovie WHERE kname = '이프온리'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '로이 샘슨'), (SELECT seq FROM tableMovie WHERE kname = '이프온리'));

INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '임청하'), (SELECT seq FROM tableMovie WHERE kname = '주경삼림 리마스터링'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '양조위'), (SELECT seq FROM tableMovie WHERE kname = '주경삼림 리마스터링'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '왕페이'), (SELECT seq FROM tableMovie WHERE kname = '주경삼림 리마스터링'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '금성무'), (SELECT seq FROM tableMovie WHERE kname = '주경삼림 리마스터링'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '주가령'), (SELECT seq FROM tableMovie WHERE kname = '주경삼림 리마스터링'));


INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '황정민'), (SELECT seq FROM tableMovie WHERE kname = '서울의 봄'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '정우성'), (SELECT seq FROM tableMovie WHERE kname = '서울의 봄'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '이성민'), (SELECT seq FROM tableMovie WHERE kname = '서울의 봄'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '박해준'), (SELECT seq FROM tableMovie WHERE kname = '서울의 봄'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '김성균'), (SELECT seq FROM tableMovie WHERE kname = '서울의 봄'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '정만식'), (SELECT seq FROM tableMovie WHERE kname = '서울의 봄'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '정해인'), (SELECT seq FROM tableMovie WHERE kname = '서울의 봄'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '이준혁'), (SELECT seq FROM tableMovie WHERE kname = '서울의 봄'));


INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '미치에다 슌스케'), (SELECT seq FROM tableMovie WHERE kname = '오늘 밤, 세계에서 이 사랑이 사라진다 해도'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '후쿠모토 리코'), (SELECT seq FROM tableMovie WHERE kname = '오늘 밤, 세계에서 이 사랑이 사라진다 해도'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '후루카와 코토네'), (SELECT seq FROM tableMovie WHERE kname = '오늘 밤, 세계에서 이 사랑이 사라진다 해도'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '마츠모토 호노카'), (SELECT seq FROM tableMovie WHERE kname = '오늘 밤, 세계에서 이 사랑이 사라진다 해도'));


INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '장만옥'), (SELECT seq FROM tableMovie WHERE kname = '화양연화'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '양조위'), (SELECT seq FROM tableMovie WHERE kname = '화양연화'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '소병림'), (SELECT seq FROM tableMovie WHERE kname = '화양연화'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '반적화'), (SELECT seq FROM tableMovie WHERE kname = '화양연화'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '뇌진'), (SELECT seq FROM tableMovie WHERE kname = '화양연화'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '손가군'), (SELECT seq FROM tableMovie WHERE kname = '화양연화'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '장요양'), (SELECT seq FROM tableMovie WHERE kname = '화양연화'));


INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '바이쇼 치에코'), (SELECT seq FROM tableMovie WHERE kname = '플랜 75'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '이소무라 하야토'), (SELECT seq FROM tableMovie WHERE kname = '플랜 75'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '카와이 유미'), (SELECT seq FROM tableMovie WHERE kname = '플랜 75'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '스테파니 아리안'), (SELECT seq FROM tableMovie WHERE kname = '플랜 75'));

INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '카리나'), (SELECT seq FROM tableMovie WHERE kname = '에스파 : 퍼스트 페이지'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '지젤'), (SELECT seq FROM tableMovie WHERE kname = '에스파 : 퍼스트 페이지'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '윈터'), (SELECT seq FROM tableMovie WHERE kname = '에스파 : 퍼스트 페이지'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '닝닝'), (SELECT seq FROM tableMovie WHERE kname = '에스파 : 퍼스트 페이지'));

INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '크리스 파인'), (SELECT seq FROM tableMovie WHERE kname = '위시'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '알란 터딕'), (SELECT seq FROM tableMovie WHERE kname = '위시'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '아리아나 데보스'), (SELECT seq FROM tableMovie WHERE kname = '위시'));

INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '박나은'), (SELECT seq FROM tableMovie WHERE kname = '막걸리가 알려줄거야'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '박효주'), (SELECT seq FROM tableMovie WHERE kname = '막걸리가 알려줄거야'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '김희원'), (SELECT seq FROM tableMovie WHERE kname = '막걸리가 알려줄거야'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '김지훈'), (SELECT seq FROM tableMovie WHERE kname = '막걸리가 알려줄거야'));

INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '장국영'), (SELECT seq FROM tableMovie WHERE kname = '해피 투게더 리마스터링'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '양조위'), (SELECT seq FROM tableMovie WHERE kname = '해피 투게더 리마스터링'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '장첸'), (SELECT seq FROM tableMovie WHERE kname = '해피 투게더 리마스터링'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '그레고리 데이튼'), (SELECT seq FROM tableMovie WHERE kname = '해피 투게더 리마스터링'));

INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '김대중'), (SELECT seq FROM tableMovie WHERE kname = '길위에 김대중'));

INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '류준열'), (SELECT seq FROM tableMovie WHERE kname = '외계+인 2부'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '김태리'), (SELECT seq FROM tableMovie WHERE kname = '외계+인 2부'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '김우빈'), (SELECT seq FROM tableMovie WHERE kname = '외계+인 2부'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '이하늬'), (SELECT seq FROM tableMovie WHERE kname = '외계+인 2부'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '염정아'), (SELECT seq FROM tableMovie WHERE kname = '외계+인 2부'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '조우진'), (SELECT seq FROM tableMovie WHERE kname = '외계+인 2부'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '김의성'), (SELECT seq FROM tableMovie WHERE kname = '외계+인 2부'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '진선규'), (SELECT seq FROM tableMovie WHERE kname = '외계+인 2부'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '신정근'), (SELECT seq FROM tableMovie WHERE kname = '외계+인 2부'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '윤경호'), (SELECT seq FROM tableMovie WHERE kname = '외계+인 2부'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '이시훈'), (SELECT seq FROM tableMovie WHERE kname = '외계+인 2부'));

INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '라이언 고슬링'), (SELECT seq FROM tableMovie WHERE kname = '블레이드 러너 2049'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '해리슨 포드'), (SELECT seq FROM tableMovie WHERE kname = '블레이드 러너 2049'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '아나 데 아르마스'), (SELECT seq FROM tableMovie WHERE kname = '블레이드 러너 2049'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '실비아 혹스'), (SELECT seq FROM tableMovie WHERE kname = '블레이드 러너 2049'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '자레드 레토'), (SELECT seq FROM tableMovie WHERE kname = '블레이드 러너 2049'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '맥켄지 데이비스'), (SELECT seq FROM tableMovie WHERE kname = '블레이드 러너 2049'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '로빈 라이트'), (SELECT seq FROM tableMovie WHERE kname = '블레이드 러너 2049'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '데이브 바티스타'), (SELECT seq FROM tableMovie WHERE kname = '블레이드 러너 2049'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '레니 제임스'), (SELECT seq FROM tableMovie WHERE kname = '블레이드 러너 2049'));

INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '쿠마일 난지아니'), (SELECT seq FROM tableMovie WHERE kname = '인투 더 월드'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '엘리자베스 뱅크스'), (SELECT seq FROM tableMovie WHERE kname = '인투 더 월드'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '아콰피나'), (SELECT seq FROM tableMovie WHERE kname = '인투 더 월드'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '키건 마이클 키'), (SELECT seq FROM tableMovie WHERE kname = '인투 더 월드'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '캐롤 케인'), (SELECT seq FROM tableMovie WHERE kname = '인투 더 월드'));

INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '동방우'), (SELECT seq FROM tableMovie WHERE kname = '장인과 사위'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '지대한'), (SELECT seq FROM tableMovie WHERE kname = '장인과 사위'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '이혁'), (SELECT seq FROM tableMovie WHERE kname = '장인과 사위'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '공정환'), (SELECT seq FROM tableMovie WHERE kname = '장인과 사위'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '김병옥'), (SELECT seq FROM tableMovie WHERE kname = '장인과 사위'));

INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '나카무라 슈고'), (SELECT seq FROM tableMovie WHERE kname = '더 퍼스트 슬램덩크'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '카사마 준'), (SELECT seq FROM tableMovie WHERE kname = '더 퍼스트 슬램덩크'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '카미오 신이치로'), (SELECT seq FROM tableMovie WHERE kname = '더 퍼스트 슬램덩크'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '키무라 스바루'), (SELECT seq FROM tableMovie WHERE kname = '더 퍼스트 슬램덩크'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '미야케 켄타'), (SELECT seq FROM tableMovie WHERE kname = '더 퍼스트 슬램덩크'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '엄상현'), (SELECT seq FROM tableMovie WHERE kname = '더 퍼스트 슬램덩크'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '장민혁'), (SELECT seq FROM tableMovie WHERE kname = '더 퍼스트 슬램덩크'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '신용우'), (SELECT seq FROM tableMovie WHERE kname = '더 퍼스트 슬램덩크'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '강수진'), (SELECT seq FROM tableMovie WHERE kname = '더 퍼스트 슬램덩크'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '최낙윤'), (SELECT seq FROM tableMovie WHERE kname = '더 퍼스트 슬램덩크'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '소연'), (SELECT seq FROM tableMovie WHERE kname = '더 퍼스트 슬램덩크'));

INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '오노 켄쇼'), (SELECT seq FROM tableMovie WHERE kname = '극장판 아이돌리쉬 세븐; LIVE 4bit BEYOND THE PERiOD DAY 1'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '하타노 와타루'), (SELECT seq FROM tableMovie WHERE kname = '극장판 아이돌리쉬 세븐; LIVE 4bit BEYOND THE PERiOD DAY 1'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '호시 소이치로'), (SELECT seq FROM tableMovie WHERE kname = '극장판 아이돌리쉬 세븐; LIVE 4bit BEYOND THE PERiOD DAY 1'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '히로세 유야'), (SELECT seq FROM tableMovie WHERE kname = '극장판 아이돌리쉬 세븐; LIVE 4bit BEYOND THE PERiOD DAY 1'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '마스다 토시키'), (SELECT seq FROM tableMovie WHERE kname = '극장판 아이돌리쉬 세븐; LIVE 4bit BEYOND THE PERiOD DAY 1'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '시라이 유스케'), (SELECT seq FROM tableMovie WHERE kname = '극장판 아이돌리쉬 세븐; LIVE 4bit BEYOND THE PERiOD DAY 1'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '요나가 츠바사'), (SELECT seq FROM tableMovie WHERE kname = '극장판 아이돌리쉬 세븐; LIVE 4bit BEYOND THE PERiOD DAY 1'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '켄'), (SELECT seq FROM tableMovie WHERE kname = '극장판 아이돌리쉬 세븐; LIVE 4bit BEYOND THE PERiOD DAY 1'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '아베 아츠시'), (SELECT seq FROM tableMovie WHERE kname = '극장판 아이돌리쉬 세븐; LIVE 4bit BEYOND THE PERiOD DAY 1'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '에구치 타쿠야'), (SELECT seq FROM tableMovie WHERE kname = '극장판 아이돌리쉬 세븐; LIVE 4bit BEYOND THE PERiOD DAY 1'));


INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '윤제완'), (SELECT seq FROM tableMovie WHERE kname = '뽀로로 극장판 슈퍼스타 대모험'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '김성민'), (SELECT seq FROM tableMovie WHERE kname = '뽀로로 극장판 슈퍼스타 대모험'));

INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '데이브 터너'), (SELECT seq FROM tableMovie WHERE kname = '나의 올드 오크'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '에블라 마리'), (SELECT seq FROM tableMovie WHERE kname = '나의 올드 오크'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '로렌조 맥거번 자이니'), (SELECT seq FROM tableMovie WHERE kname = '나의 올드 오크'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '데비 허니우드'), (SELECT seq FROM tableMovie WHERE kname = '나의 올드 오크'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '트레버 폭스'), (SELECT seq FROM tableMovie WHERE kname = '나의 올드 오크'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '콜 테이트'), (SELECT seq FROM tableMovie WHERE kname = '나의 올드 오크'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '크리스 고츠'), (SELECT seq FROM tableMovie WHERE kname = '나의 올드 오크'));

INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '나탈리 포트만'), (SELECT seq FROM tableMovie WHERE kname = '메이 디셈버'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '줄리안 무어'), (SELECT seq FROM tableMovie WHERE kname = '메이 디셈버'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '찰스 멜튼'), (SELECT seq FROM tableMovie WHERE kname = '메이 디셈버'));


INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '임윤찬'), (SELECT seq FROM tableMovie WHERE kname = '크레센도 반 클라이번'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '안나 게뉴시네'), (SELECT seq FROM tableMovie WHERE kname = '크레센도 반 클라이번'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '드미트리 초니'), (SELECT seq FROM tableMovie WHERE kname = '크레센도 반 클라이번'));


INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '킬리언 머피'), (SELECT seq FROM tableMovie WHERE kname = '오펜하이머'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '에밀리 블런트'), (SELECT seq FROM tableMovie WHERE kname = '오펜하이머'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '맷 데이먼'), (SELECT seq FROM tableMovie WHERE kname = '오펜하이머'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '로버트 다우니 주니어'), (SELECT seq FROM tableMovie WHERE kname = '오펜하이머'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '플로렌스 퓨'), (SELECT seq FROM tableMovie WHERE kname = '오펜하이머'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '조쉬 하트넷'), (SELECT seq FROM tableMovie WHERE kname = '오펜하이머'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '케이시 애플렉'), (SELECT seq FROM tableMovie WHERE kname = '오펜하이머'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '라미 말렉'), (SELECT seq FROM tableMovie WHERE kname = '오펜하이머'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '케네스 브래너'), (SELECT seq FROM tableMovie WHERE kname = '오펜하이머'));


INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '박성영'), (SELECT seq FROM tableMovie WHERE kname = '영화 스미코구라시-푸른 달밤의 마법의 아이'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '전숙경'), (SELECT seq FROM tableMovie WHERE kname = '영화 스미코구라시-푸른 달밤의 마법의 아이'));

INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '오드리 헵번'), (SELECT seq FROM tableMovie WHERE kname = '전쟁과 평화'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '헨리 폰다'), (SELECT seq FROM tableMovie WHERE kname = '전쟁과 평화'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '멜 페러'), (SELECT seq FROM tableMovie WHERE kname = '전쟁과 평화'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '비토리오 가스먼'), (SELECT seq FROM tableMovie WHERE kname = '전쟁과 평화'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '허버트 롬'), (SELECT seq FROM tableMovie WHERE kname = '전쟁과 평화'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '제레미 브렛'), (SELECT seq FROM tableMovie WHERE kname = '전쟁과 평화'));


INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '하야시바라 메구미'), (SELECT seq FROM tableMovie WHERE kname = '엔드 오브 에반리온'));

INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '마이크 보겔'), (SELECT seq FROM tableMovie WHERE kname = '예수는 역사다'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '에리카 크리스텐슨'), (SELECT seq FROM tableMovie WHERE kname = '예수는 역사다'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '페이 더너웨이'), (SELECT seq FROM tableMovie WHERE kname = '예수는 역사다'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '로버트 포스터'), (SELECT seq FROM tableMovie WHERE kname = '예수는 역사다'));

INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '김윤석'), (SELECT seq FROM tableMovie WHERE kname = '노량: 죽음의 바다'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '백윤식'), (SELECT seq FROM tableMovie WHERE kname = '노량: 죽음의 바다'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '정재영'), (SELECT seq FROM tableMovie WHERE kname = '노량: 죽음의 바다'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '허준호'), (SELECT seq FROM tableMovie WHERE kname = '노량: 죽음의 바다'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '김성규'), (SELECT seq FROM tableMovie WHERE kname = '노량: 죽음의 바다'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '이규형'), (SELECT seq FROM tableMovie WHERE kname = '노량: 죽음의 바다'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '이무생'), (SELECT seq FROM tableMovie WHERE kname = '노량: 죽음의 바다'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '최덕문'), (SELECT seq FROM tableMovie WHERE kname = '노량: 죽음의 바다'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '안보현'), (SELECT seq FROM tableMovie WHERE kname = '노량: 죽음의 바다'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '박명훈'), (SELECT seq FROM tableMovie WHERE kname = '노량: 죽음의 바다'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '박훈'), (SELECT seq FROM tableMovie WHERE kname = '노량: 죽음의 바다'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '문정희'), (SELECT seq FROM tableMovie WHERE kname = '노량: 죽음의 바다'));

INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '후치가미 마이'), (SELECT seq FROM tableMovie WHERE kname = '걸즈 앤 판처 최종장 제4화'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '카야노 아이'), (SELECT seq FROM tableMovie WHERE kname = '걸즈 앤 판처 최종장 제4화'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '오자키 마미'), (SELECT seq FROM tableMovie WHERE kname = '걸즈 앤 판처 최종장 제4화'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '나카가미 이쿠미'), (SELECT seq FROM tableMovie WHERE kname = '걸즈 앤 판처 최종장 제4화'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '이구치 유카'), (SELECT seq FROM tableMovie WHERE kname = '걸즈 앤 판처 최종장 제4화'));
INSERT INTO tableActing VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActing), (SELECT seq FROM tableActor WHERE name = '후쿠엔 미사토'), (SELECT seq FROM tableMovie WHERE kname = '걸즈 앤 판처 최종장 제4화'));



SELECT * FROM tableActing;

DROP TABLE tableActorMain;

-- 대표작
CREATE TABLE tableActorMain(
    seq NUMBER PRIMARY KEY,     -- 대표작 번호(PK)
    aseq NUMBER NOT NULL,         -- 배우 번호
    name VARCHAR2(100) NOT NULL,         -- 대표작 이름
    CONSTRAINT actorMain_seq FOREIGN KEY(aseq) REFERENCES tableActor(seq)
);

INSERT INTO tableActorMain VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '티모테 샬라메'), '듄: 파트2');
INSERT INTO tableActorMain VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '올리비아 콜맨'), '장화신은 고양이:끝내주는 모험');
INSERT INTO tableActorMain VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '휴 그랜트'), '던전 앤 드래곤:도적들의 명예');
INSERT INTO tableActorMain VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '샐리 호킨스'), '스펜서');
INSERT INTO tableActorMain VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '하나에 나츠키'), '귀멸의 칼날: 상현집결, 그리고 도공 마을로');
INSERT INTO tableActorMain VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '키토 아카리'), '귀멸의 칼날: 상현집결, 그리고 도공 마을로');
INSERT INTO tableActorMain VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '하나자와 카나'), '극장판 5등분의 신부');
INSERT INTO tableActorMain VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '라미란'), '정직한 후보2');
INSERT INTO tableActorMain VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '공명'), '한산 리덕스');
INSERT INTO tableActorMain VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '염혜란'), '웅남이');
INSERT INTO tableActorMain VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '박병은'), '이상한 나라의 수학자');
INSERT INTO tableActorMain VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '장윤주'), '세자매');
INSERT INTO tableActorMain VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '이무생'), '당신이 잠든 사이');
INSERT INTO tableActorMain VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '안은진'), '올빼미');
INSERT INTO tableActorMain VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '나문희'), '룸 쉐어링');
INSERT INTO tableActorMain VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '김영옥'), '말임씨를 부탁해');
INSERT INTO tableActorMain VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '박근형'), '아들의 이름으로');
INSERT INTO tableActorMain VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '류승수'), '딥');
INSERT INTO tableActorMain VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '윤여정'), '미나리');
INSERT INTO tableActorMain VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '유해진'), '야당');
INSERT INTO tableActorMain VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '김윤진'), '자백');
INSERT INTO tableActorMain VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '정성화'), '영웅');
INSERT INTO tableActorMain VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '김서형'), '비닐하우스');
INSERT INTO tableActorMain VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '다니엘 헤니'), '서치2');
INSERT INTO tableActorMain VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '이현우'), '드림');
INSERT INTO tableActorMain VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '탕준상'), '오마주');
INSERT INTO tableActorMain VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '장예나'), '핑크퐁 시네마 콘서트 3: 진저브레드맨을 잡아라');
INSERT INTO tableActorMain VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '전태열'), '극장판 우당탕탕 은하안전단: 진정한 용기!');
INSERT INTO tableActorMain VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '조진웅'), '경관의 피');
INSERT INTO tableActorMain VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '김희애'), '보통의 가족');
INSERT INTO tableActorMain VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '이수경'), '기적');
INSERT INTO tableActorMain VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '헨리 카빌'), '잭 스나이더의 저스티스 리그');
INSERT INTO tableActorMain VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '브라이스 댈러스 하워드'), '쥬라기 월드: 도미니언');
INSERT INTO tableActorMain VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '샘 록웰'), '배드 가이즈');
INSERT INTO tableActorMain VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '브라이언 크랜스톤'), '애스터로이드 시티');
INSERT INTO tableActorMain VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '캐서린 오하라'), 'A.C.O.D');
INSERT INTO tableActorMain VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '두아 리파'), '바비');
INSERT INTO tableActorMain VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '아리아나 데보스'), '위시');
INSERT INTO tableActorMain VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '아리아나 데보스'), '크레이븐 더 헌터');
INSERT INTO tableActorMain VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '존 시나'), '분노의 질주: 라이드 오어 다이');
INSERT INTO tableActorMain VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '사무엘 L. 잭슨'), '가필드: 우유 원정대');
INSERT INTO tableActorMain VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '조니 뎁'), '잔 뒤 바리');
INSERT INTO tableActorMain VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '산드라 휠러'), '엘리자벳과 나');
INSERT INTO tableActorMain VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '스완 아를로'), '신의 은총으로');
INSERT INTO tableActorMain VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '앙투안 라이나르츠'), '퍼펙트 내니');
INSERT INTO tableActorMain VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '사뮤엘 테이'), '파티 걸');
INSERT INTO tableActorMain VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '김새해'), '핑크퐁 시네마 콘서트 3: 진저브레드맨을 잡아라');
INSERT INTO tableActorMain VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '조경이'), '핑크퐁 시네마 콘서트 3: 진저브레드맨을 잡아라');
INSERT INTO tableActorMain VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '황창영'), '거신: 바람의 아이');
INSERT INTO tableActorMain VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '이소은'), '핑크퐁 시네마 콘서트 3: 진저브레드맨을 잡아라');
INSERT INTO tableActorMain VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '박준형'), '극장판 파워레인저 캡틴포스: 지구를 위한 싸움');
INSERT INTO tableActorMain VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '폴 지아마티'), '건파우더 밀크셰이크');
INSERT INTO tableActorMain VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '더바인 조이 랜돌프'), '장화신은 고양이: 끝내주는 모험');
INSERT INTO tableActorMain VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '안도 사쿠라'), '한 남자');
INSERT INTO tableActorMain VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '나가야마 에이타'), '마이 프렌드 에이');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '타카하타 미츠키'), '캐릭터');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '나카무라 시도'), '캐릭터');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '다나카 유코'), '나는 나대로 혼자서 간다');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '석승훈'), '꼬마돼지 베이브의 바다 대모험');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '정해은'), '이빨요정 비올레타: 요정나라로 돌아갈래!');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '장병관'), '서유기: 재세요왕');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '박시윤'), '돌핀보이');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '김용'), '이빨요정 비올레타: 요정나라로 돌아갈래!');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '김다올'), '극장판 피노키오 위대한 모험');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '서정익'), '몬스터 신부: 101번째 프로포즈');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '제니퍼 러브 휴이트'), '카페');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '폴 니콜스'), '브리짓 존스의 일기2 : 열정과 애정');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '톰 윌킨슨'), '데드 위크: 인생마감 7일전');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '다이아나 하드캐슬'), '더 보이');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '임청하'), '동사서독 리덕스');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '양조위'), '무명');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '왕페이'), '대성소사');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '금성무'), '태평륜 완결편');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '주가령'), '마영정');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '황정민'), '교섭');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '정우성'), '헌트');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '이성민'), '기적');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '박해준'), '야당');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '김성균'), '타겟');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '정만식'), '헌트');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '정해인'), '언프레임드');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '이준혁'), '범죄도시3');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '미치에다 슌스케'), '461개의 도시락');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '후쿠모토 리코'), '극장판 전생했더니 슬라임이었던 건에 대하여: 홍련의 인연편');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '후루카와 코토네'), '메타모르포제의 툇마루');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '마츠모토 호노카'), '은밀한 공범');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '장만옥'), '동사서독 리덕스');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '소병림'), '2046 리마스터링');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '손가군'), '하드코어 코미디');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '장요양'), '조조 - 황제의 반란');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '바이쇼 치에코'), '날씨의 아이');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '이소무라 하야토'), '어제 뭐 먹었어? - 극장판');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '카와이 유미'), '백화');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '크리스 파인'), '던전 앤 드래곤: 도적들의 명예');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '알란 터딕'), '알라딘');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '김희원'), '탈출: PROJECT SILENCE');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '김지훈'), '은하수');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '장국영'), '동사서독 리덕스');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '장첸'), '듄');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '그레고리 데이튼'), '탱고 레슨');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '김대중'), '존경하고 사랑하는 국민 여러분');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '오노 켄쇼'), '기동전사 건담: 섬광의 하사웨이');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '하타노 와타루'), '지저귀는 새는 날지 않는다');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '호시 소이치로'), '신 테니스의 왕자 효테이 vs 릿카이 : 게임 오브 퓨처 전편');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '시라이 유스케'), '극장판 사사키와 미야노 - 졸업편');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '요나가 츠바사'), '흐린하늘에웃다 외전 결별, 야마이누의 맹세');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '켄'), '경계의 저편 : I''LL BE HERE -과거편-');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '아베 아츠시'), '예스, 노 또는 반반');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '에구치 타쿠야'), '극장판 스파이 패밀리 코드 : 화이트');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '류준열'), '외계+인 1부');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '김태리'), '외계+인 1부');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '김우빈'), '외계+인 1부');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '이하늬'), '유령');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '염정아'), '외계+인 1부');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '조우진'), '외계+인 1부');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '김의성'), '외계+인 1부');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '진선규'), '아마존 활명수');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '신정근'), '외계+인 1부');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '윤경호'), '잠');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '라이언 고슬링'), '스턴트맨');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '해리슨 포드'), '인디아나 존스: 운명의 다이얼');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '아나 데 아르마스'), '발레리나');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '실비아 혹스'), '거미줄에 걸린 소녀');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '자레드 레토'), '헌티드 맨션');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '맥켄지 데이비스'), '더 터닝');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '로빈 라이트'), '랜드');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '데이브 바티스타'), '듄: 파트2');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '레니 제임스'), '거리의 보안관');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '쿠마일 난지아니'), '이터널스');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '엘리자베스 뱅크스'), '콜 제인');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '아콰피나'), '쿵푸팬더4');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '키건 마이클 키'), '슈퍼 마리오 브라더스');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '캐롤 케인'), '데드 돈 다이');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '동방우'), '메기');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '지대한'), '파이프라인');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '공정환'), '사회인');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '김병옥'), 'B컷');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '데비 허니우드'), '미안해요, 리키');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '미야케 켄타'), '나의 히어로 아카데미아 더 무비: 두 명의 히어로');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '엄상현'), '쿵푸팬더4');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '장민혁'), '극장판 귀멸의 칼날: 무한열차편');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '신용우'), '퍼피 구조대: 더 마이티 무비');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '강수진'), '원피스: 로맨스 던');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '최낙윤'), '극장판 도라에몽: 진구와 하늘의 유토피아');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '쿠로키 하루'), '키리에의 노래');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '이케마츠 소스케'), '저스트 리멤버링');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '칸이치로'), '달의 영휴');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '마키 쿠로도'), '클럽 진주군');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '사토 코이치'), '사일런트 도쿄');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '이시바시 렌지'), '천공의 벌');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '나탈리 포트만'), '토르: 러브 앤 썬더');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '줄리안 무어'), '스피릿');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '임윤찬'), '크레센도');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '안나 게뉴시네'), '크레센도');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '드미트리 초니'), '크레센도');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '마린 알솝'), '크레센도');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '킬리언 머피'), '콰이어트 플레이스 2');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '에밀리 블런트'), '스턴트맨');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '맷 데이먼'), '에어');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '로버트 다우니 주니어'), '어벤져스: 엔드게임');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '플로렌스 퓨'), '듄: 파트2');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '조쉬 하트넷'), '스파이 코드명 포춘');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '케이시 애플렉'), '더 월드 투 컴');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '라미 말렉'), '암스테르담');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '케네스 브래너'), '베니스 유령 살인사건');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '하야시바라 메구미'), '명탐정코난: 흑철의 어영');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '후치가미 마이'), '걸즈 앤 판처 최종장 제3화');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '카야노 아이'), '아리아: 더 베네디지오네');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '오자키 마미'), '걸즈 앤 판처 최종장 제3화');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '나카가미 이쿠미'), '걸즈 앤 판처 최종장 제3화');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '이구치 유카'), '걸즈 앤 판처 최종장 제3화');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '후쿠엔 미사토'), '미소녀 전사 세일러문 이터널');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '김윤석'), '모가디슈');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '백윤식'), '명당');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '정재영'), '기묘한 가족');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '허준호'), '검은 수녀들');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '김성규'), '한산 리덕스');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '이규형'), '해피 뉴 이어');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '최덕문'), '리미트');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '안보현'), '2시의 데이트');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '박명훈'), '왕을 찾아서');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '마이크 보겔'), '더 케이스 포 크라이스트');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '에리카 크리스텐슨'), '더 케이스 포 크라이스트');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '페이 더너웨이'), '더 케이스 포 크라이스트');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '로버트 포스터'), '왓 데이 해드');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '박성영'), '바다 탐험대 옥토넛 어보브 앤 비욘드: 버드, 옥토경보를 울려라!');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '전숙경'), '퍼피 구조대 더 무비');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '오드리 헵번'), '영혼은 그대 곁에');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '헨리 폰다'), '황금 연못');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '멜 페러'), 'SAS 미망인의 눈');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '비토리오 가스먼'), '자스민의 함정');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '허버트 롬'), '핑크 팬더 8 - 핑크 팬더의 아들');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '제레미 브렛'), '마이 페어 레이디');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '제임스 카비젤'), '인피델');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '빌 캠프'), '조커');
INSERT INTO tableActorMain VALUES((SELECT NVL(MAX(seq), 0) + 1 FROM tableActorMain), (SELECT seq FROM tableActor WHERE name = '윤제완'), '뽀로로 극장판 드래곤캐슬 대모험');


SELECT * FROM tableActorMain;


SELECT
    m.kname,
    c.name
FROM tableMovie m
    INNER JOIN tableActing a
    ON a.mseq = m.seq
        INNER JOIN tableActor c
        ON a.aseq = c.seq;
