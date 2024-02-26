CREATE TABLE tableMovie(
    seq NUMBER PRIMARY KEY,         -- 영화번호
    rank NUMBER NULL,               -- 순위
    kname VARCHAR2(100) NOT NULL,   -- 한글이름
    ename VARCHAR2(150) NULL,   -- 영문이름
    ryear NUMBER(4) NOT NULL,       -- 출시년도
    rating VARCHAR2(30) NULL,       -- 관람등급
    rtime NUMBER NULL,          -- 상영시간
    release varchar2(10) NULL,       -- 개봉일
    audience NUMBER NULL,           -- 누적관객
    plot VARCHAR2(4000)               -- 줄거리
);
DROP TABLE tableMovie;

DROP TABLE tableMovie CASCADE CONSTRAINTS;

SELECT * FROM tableMovie;

commit;

INSERT INTO tableMovie (seq, rank, kname, ename, ryear, rating, rtime, release, audience, plot)
VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableMovie), 1, '웡카', 'Wonka', 2023, '전체 관람가', 116, '2024-01-31', 2691215,'세상에서 가장 달콤한 여정
좋은 일은 모두 꿈에서부터 시작된다!

마법사이자 초콜릿 메이커 ‘윌리 웡카’의 꿈은
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
INSERT INTO tableMovie (seq, rank, kname, ename, ryear, rating, rtime, release, audience, plot) VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableMovie), 2, '건국전쟁', 'The Birth of Korea', 2023, '12세이상관람가', 100, '2024-02-01', 853661, '1945년 해방 이후 남과 북은 서로 다른 길을 걸어 왔다. 자유를 억압하고 인권을 탄압하는 공산주의 독재 국가 북한과 자유와 민주주의에 기초한 경제 번영과 선진국의 길로 들어선 대한민국. 두 나라는 같은 언어, 역사, 인종을 공유하면서 어떻게 극단적인 두 나라로 갈라졌을까? 지난 70년 역사를 통해서 오늘의 대한민국을 만들고 지켜내기 위해 노력했던 이승만 대통령과 건국1세대들의 희생과 투쟁을 조명한 작품.');
INSERT INTO tableMovie (seq, rank, kname, ename, ryear, rating, rtime, release, audience, plot) VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableMovie), 3, '귀멸의 칼날: 인연의 기적, 그리고 합동 강화 훈련으로', 'Demon Slayer: Kimetsu no Yaiba To The Hashira Training', 2024, '15세이상관람', 103, '2024-02-14', 337366, null);
INSERT INTO tableMovie (seq, rank, kname, ename, ryear, rating, rtime, release, audience, plot) VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableMovie), 4, '시민덕희', 'Citizen of a Kind', 2020, '15세이상관람가', 113, '2024-01-24', 1681091, '내 돈을 사기 친 그 놈이 구조 요청을 해왔다!

세탁소 화재로 인해 대출상품을 알아보던 생활력 만렙 덕희에게
어느 날, 거래은행의 손대리가
합리적인 대출상품을 제안하겠다며 전화를 걸어온다.
대출에 필요하다며 이런저런 수수료를 요구한 손대리에게
돈을 보낸 덕희는 이 모든 과정이
보이스피싱이었음을 뒤늦게 인지하고 충격에 빠진다.

전 재산을 잃고 아이들과 거리로 나앉게 생긴 덕희에게
어느 날 손대리가 다시 전화를 걸어오는데…
이번엔 살려달라는 전화다!

경찰도 포기한 사건,
덕희는 손대리도 구출하고 잃어버린 돈도 찾겠다는 일념으로
필살기 하나씩 장착한 직장 동료들과 함께
중국 칭다오로 직접 날아간다.');
INSERT INTO tableMovie (seq, rank, kname, ename, ryear, rating, rtime, release, audience, plot) VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableMovie), 5, '소풍', 'Picnic', 2023, '12세이상관람가', 113, '2024-02-07', 281088, '60년 만에 찾아간 고향, 16살의 추억을 만났다
요즘 들어 돌아가신 엄마가 자꾸 꿈에 보이는 은심(나문희).
마침 절친이자 사돈 지간인 금순(김영옥)이 연락도 없이 불쑥 찾아오자,
은심은 금순과 함께 고향 남해로 떠나기로 한다.
그곳에서 우연히 자신을 짝사랑하던 태호(박근형)를 만나며
잊고 지낸 추억을 하나둘씩 떠올리게 되는데…

“다음에 다시 태어나도 네 친구 할 끼야”

한 편의 시가 되는 우정,
어쩌면 마지막 소풍이 시작된다.');
INSERT INTO tableMovie (seq, rank, kname, ename, ryear, rating, rtime, release, audience, plot) VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableMovie), 6, '도그데이즈', 'Dog Days', 2021, '12세이상관람가', 120, '2024-02-07', 359915, '깔끔한 성격의 계획형 싱글남 ‘민상’(유해진).
영끌까지 모아 산 건물을 개똥밭으로 만드는
세입자 수의사 ‘진영’(김서형) 때문에 매일 머리가 아프다.
오늘도 ‘진영’과 티격태격하던 ‘민상’은
동물병원에서 한 성격하는 할머니를 만나는데,
다름 아닌 세계적 건축가 ‘민서’(윤여정)!
진행 중인 프로젝트를 위해 ‘민서’의 도움이 절실한 ‘민상’은
‘민서’에게 잘 보이기 위해
‘진영’과 그녀의 반려견 ‘차장님’을 공략하기 시작한다.

갑자기 길에서 쓰러지게 되며
유일한 가족인 반려견 ‘완다’를 잃어 버리고만 ‘민서’.
동네에 살고 있는 케이팝 작곡가 ‘선용’(정성화)과 ‘정아’(김윤진) 가족이
완다를 보살피고 있다는 사실을 모르는 ‘민서’는
자신을 구해준 MZ 배달 라이더 ‘진우’(탕준상)와 함께 완다를 찾아 나선다.

한편 ‘선용’의 후배인 밴드 리더 ‘현’(이현우)은
자리를 비운 여친의 반려견 ‘스팅’을 돌보던 중
스팅의 대디를 자청하며 나타난 여친의 전남친
‘다니엘’(다니엘 헤니)의 등장에 기가 막힐 따름인데…!

특별한 단짝 덕분에 엮이게 된 이들의
기분 좋은 갓생 스토리가 시작된다!');
INSERT INTO tableMovie (seq, rank, kname, ename, ryear, rating, rtime, release, audience, plot) VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableMovie), 7, '아기상어 극장판: 사이렌 스톤의 비밀', 'Baby Shark’s Big Movie', 2023, '전체관람가', 83, '2024-02-07', 85529, '대도시 미끈매끈 시티로 이사한 아기상어 ‘올리’!

최고의 단짝 ‘윌리엄’과 헤어져야 한다는 슬픔도 잠시,
뉴욕처럼 반짝이는 화려한 풍경과 멋진 음악에 설렌다.
벨루가 아이돌 ‘엔하이픈’, 상어 팝스타 ‘샤키L’,
그리고 최고의 스타 불가사리 ‘스타리아나’까지!

어느 날 ‘올리’는 ‘스타리아나’의 인기 비결,
‘사이렌 스톤’의 숨겨진 비밀과
‘스타리아나’의 거대한 음모를 알게 되는데…

아기상어, 스톤의 저주에 맞서 바다를 지켜라!');
INSERT INTO tableMovie (seq, rank, kname, ename, ryear, rating, rtime, release, audience, plot) VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableMovie), 8, '데드맨', 'Dead Man', 2021, '15세이상관람가', 108, '2024-02-07', 237678, '목숨값 단돈 500만원! 이름값 1000억?
이름에 살고, 이름에 죽는다!

인생 벼랑 끝, 살기 위해 이름까지 팔게 된 ‘이만재’.
누구도 믿을 수 없는 바지사장 세계에서 탁월한 계산 능력 하나로
가늘고 길게 버텨온 그가 큰 거 한방 터뜨릴 절호의 기회를 잡는다.
그러나 그에게 돌아온 것은 1천억 횡령 누명과 자신의 사망 기사!

살아있지만 죽은 사람, 즉 ‘데드맨’이 되어
영문도 모른 채 중국의 사설감옥에 끌려간 ‘이만재’.
정치 컨설턴트 ‘심여사’가 그의 앞에 나타나
목숨값을 담보로 위험한 제안을 하고,
‘이만재’ 때문에 아버지가 죽었다고 주장하는 ‘공희주’가 등장하면서
1천억짜리 설계판의 배후를 찾기 위해
의기투합한 세 사람의 추적이 시작되는데…');
INSERT INTO tableMovie (seq, rank, kname, ename, ryear, rating, rtime, release, audience, plot) VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableMovie), 9, '아가일', 'Argylle', 2024, '12세이상관람가', NULL, '6685437', 139811, '내가 쓴 베스트셀러 스파이 소설이 현실이 되었습니다?!');
INSERT INTO tableMovie (seq, rank, kname, ename, ryear, rating, rtime, release, audience, plot) VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableMovie), 10, '스노우 퍼핀즈', 'Johnny Puff: Secret Mission', 2023, '전체 관람가', 70, '2024-02-15', 16126, '슈퍼 버드 히어로 퍼핀즈와 함께라면
매일매일이 신나는 모험이 된다!');
INSERT INTO tableMovie (seq, rank, kname, ename, ryear, rating, rtime, release, audience, plot) VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableMovie), 11, '사운드 오브 프리덤', 'Sound of Freedom', 2023, '15세이상관람가', 131, '2024-02-21', 14935, '인신매매시장 규모 연 1,500억불
전 세계 800만 명의 아이들이 사라졌다!');
INSERT INTO tableMovie (seq, rank, kname, ename, ryear, rating, rtime, release, audience, plot) VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableMovie), 12, '추락의 해부', 'Anatomie d''une chute,
Anatomy of a Fall', 2023, '15세이상관람가', 151, '2024-01-31', 75794, '남편의 추락사로 한순간에 유력한 용의자로 지목된 유명 작가 ‘산드라’.
유일한 목격자는 시각장애가 있는 아들과 안내견뿐.
단순한 사고였을까? 아니면 우발적 자살 혹은 의도된 살인?

사건의 전말을 해부해 가는 제76회 칸영화제 황금종려상 수상작');
INSERT INTO tableMovie (seq, rank, kname, ename, ryear, rating, rtime, release, audience, plot) VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableMovie), 13, 'DMZ 동물 특공대', NULL, 2023, '전체 관람가', 74, '2024-02-14', 15071, '“뭐? 인간들이 화해하면 우리 집이 사라진다고?!”

지구상에 단 하나뿐인 공간 DMZ에 살고 있는
‘담비’와 귀요미 친구들에게 들려온 날벼락 같은 소문!

동물들의 유토피아 DMZ를 지키기 위해선
폭탄을 터뜨려 인간들의 평화를 막아야만 한다!

‘담비’, ‘쾡이’, ‘멧돼이먼’, ‘황박이’, ‘람쥐’까지
DMZ 동물 특공대 출동 준비 완료!
2월, 우리 집은 우리가 지킨다!');
INSERT INTO tableMovie (seq, rank, kname, ename, ryear, rating, rtime, release, audience, plot) VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableMovie), 14, '우견니', 'Almost Love,
遇见你', 2022, '12세이상관람가', 110, '2024-02-14', 15807, '“내 청춘은 모두 너와 연결되어 있어”

친구들에게 놀림당하지만 늘 햇살처럼 밝은 ‘자오양’.
무뚝뚝한 엘리트 전학생 ‘저우찬’.

극과 극인 두 사람은 함께 꿈을 키워 나가며 점차 가까워지고,
단 한 번뿐인 서로의 청춘에 밝은 빛이 되어준다.

“너는 내게 온 별이야”

가장 빛나는 시기에 만난 두 사람.
그렇게 시작된 너와 나의 빈틈없이 찬란한 인생 첫 로맨스!');
INSERT INTO tableMovie (seq, rank, kname, ename, ryear, rating, rtime, release, audience, plot) VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableMovie), 15, '바튼 아카데미', 'The Holdovers', 2023, '15세이상관람가', 133, '2024-02-21', 8232, '함께 있지만 그들은 언제나 혼자였다

1970년 바튼 아카데미,
크리스마스를 맞아 모두가 떠난 텅빈 학교에는 세 사람이 남게 된다.
고집불통 역사 선생님 ‘폴’, 문제아 ‘털리’ 그리고 주방장 ‘메리’
이들은 원치 않았던 동고동락을 시작하게 되고,
예상치 못한 순간, 서로의 비밀을 공유하면서 특별한 우정을 나누게 되는데…');
INSERT INTO tableMovie (seq, rank, kname, ename, ryear, rating, rtime, release, audience, plot) VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableMovie), 16, '괴물', 'Monster,
怪物', 2023, '12세이상관람가', 126, '2023-11-29', 524926, '“우리 동네에는 괴물이 산다”

싱글맘 사오리(안도 사쿠라)는
아들 미나토(쿠로카와 소야)의 행동에서 이상 기운을 감지한다.
용기를 내 찾아간 학교에서 상담을 진행한 날 이후
선생님과 학생들의 분위기가 심상치 않게 흐르기 시작하고.

“괴물은 누구인가?”
한편 사오리는 친구들로부터 따돌림을 당하고 있는
미나토의 친구 요리(히이라기 히나타)의 존재를 알게 되고
자신이 아는 아들의 모습과 사람들이 아는 아들의 모습이
다르다는 사실을 어렴풋이 깨닫는데…
태풍이 몰아치던 어느 날, 아무도 몰랐던 진실이 드러난다.');
INSERT INTO tableMovie (seq, rank, kname, ename, ryear, rating, rtime, release, audience, plot) VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableMovie), 17, '정글번치 : 월드투어', 'Les As de la Jungle 2 - Operation Tour du Monde', 2023, '전체 관람가', 90, '2024-01-31', 49916, '정글에 부글부글 거품 폭탄이?!
두더지 악당의 습격으로 폭발 위기에 처한 정글!

정글을 구해야만 해!
정글을 구하려면
전설의 ‘알버트’ 박사를 찾아서 해독제를 만들어야 해!

눈보라 산, 사막, 비밀 동굴, 대나무 숲까지 전 세계로 떠난 정글번치!
과연 두더지 악당의 추격을 피해 박사를 찾고 정글을 구할 수 있을까?

올 겨울방학, 정글 구하는 김에 세계일주 가자고!!');
INSERT INTO tableMovie (seq, rank, kname, ename, ryear, rating, rtime, release, audience, plot) VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableMovie), 18, '이프온리', 'If Only', 2004, '12세이상관람가', 96, '2024-02-21', 1026157, '눈앞에서 사랑하는 연인을 잃은 남자 ‘이안’
그녀가 죽고 나서야 더 잘해주지 못했던 자신의 행동에 대해 후회한다

그러나 다음 날 아침,
자신의 옆에 누워있는 그녀를 보고 소스라치게 놀라는데…

그녀가 죽던 날과 똑같이 흘러가는 하루
‘이안’은 그녀를 살리고자 노력하지만 불가능하다는 것을 깨닫고,
그녀에게 진정한 사랑을 전하기로 결심한다

“네가 아니었다면 난 영영 사랑을 몰랐을 거야”');
INSERT INTO tableMovie (seq, rank, kname, ename, ryear, rating, rtime, release, audience, plot) VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableMovie), 19, '주경삼림 리마스터링', 'Chungking Express', 1994, '15세이상관람가', 102, '2021-03-04', 105188, '1994년 홍콩,

“내 사랑의 유통기한은 만 년으로 하고 싶다”
만우절의 이별 통보가 거짓말이길 바라며 술집을 찾은 경찰 223
고단한 하루를 보내고 술집에 들어온 금발머리의 마약밀매상

"그녀가 떠난 후 이 방의 모든 것들이 슬퍼한다"
여자친구가 남긴 이별 편지를 외면하고 있는 경찰 663
편지 속에 담긴 그의 아파트 열쇠를 손에 쥔 단골집 점원 페이

네 사람이 만들어낸 두 개의 로맨스
새로운 사랑을 만나는 방법에 대한 독특한 상상력');
INSERT INTO tableMovie (seq, rank, kname, ename, ryear, rating, rtime, release, audience, plot) VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableMovie), 20, '서울의 봄', '12.12: THE DAY', 2023, '12세이상관람가', NULL, '2023-11-22', 12910168, '1979년 12월 12일, 수도 서울 군사반란 발생
그날, 대한민국의 운명이 바뀌었다

대한민국을 뒤흔든 10월 26일 이후,
서울에 새로운 바람이 불어온 것도 잠시
12월 12일, 보안사령관 전두광이 반란을 일으키고
군 내 사조직을 총동원하여 최전선의 전방부대까지 서울로 불러들인다.

권력에 눈이 먼 전두광의 반란군과
이에 맞선 수도경비사령관 이태신을 비롯한
진압군 사이, 일촉즉발의 9시간이 흘러가는데…

목숨을 건 두 세력의 팽팽한 대립
오늘 밤, 대한민국 수도에서 가장 치열한 전쟁이 펼쳐진다!');
INSERT INTO tableMovie (seq, rank, kname, ename, ryear, rating, rtime, release, audience, plot) VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableMovie), 21, '오늘 밤, 세계에서 이 사랑이 사라진다 해도', 'Even If This Love Disappears from the World Tonight', 2022, '12세이상관람가', 121, '2022-11-30', 1182468, '“카미야 토루에 대해 잊지 말 것”

자고 일어나면 전날의 기억을 잃는
‘선행성 기억상실증’에 걸린 소녀 ‘마오리’

“내일의 마오리도 내가 즐겁게 해줄 거야”

누구에게도 기억되지 않는
무색무취의 평범한 소년 ‘토루’

매일 밤 사랑이 사라지는 세계,
그럼에도 불구하고,
다음 날 서로를 향한 애틋한 고백을 반복하는
두 소년, 소녀의 가장 슬픈 청춘담');
INSERT INTO tableMovie (seq, rank, kname, ename, ryear, rating, rtime, release, audience, plot) VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableMovie), 22, '화양연화', 'In The Mood For Love', 2020, '15세이상관람가', 99, '2020-12-24', 122572, '화양연화花樣年華
가장 아름답고 찬란했던 시절

같은 날 같은 아파트로 이사 온 ‘첸 부인’과 ‘차우’.
이사 첫날부터 자주 마주치던 두 사람은
‘차우’의 넥타이와 ‘첸 부인’의 가방이
각자 배우자의 것과 똑같음을 깨닫고 그들의 관계를 눈치챈다.

그 관계의 시작이 궁금해진 두 사람은 비밀스러운 만남을 이어가고
감정이 깊어지지 않기 위해 노력하지만, 서로에게 점점 빠져들기 시작한다
"많은 일이 나도 모르게 시작되죠"');
INSERT INTO tableMovie (seq, rank, kname, ename, ryear, rating, rtime, release, audience, plot) VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableMovie), 23, '플랜 75', 'Plan 75', 2022, '15세이상관람가', 113, '2024-02-07', 10256, '초고령사회에 진입한 가까운 미래의 일본.
청년층의 부담을 줄이기 위해 정부는
75세 이상 국민의 죽음을 적극 지원하는 정책 ‘플랜 75’를 발표한다.

명예퇴직 후 ’플랜 75’ 신청을 고민하는 78세 여성 ‘미치’
가족의 신청서를 받은 ‘플랜 75’ 담당 시청 직원 ‘히로무’
개인별 맞춤형 서비스를 제공하는 ‘플랜 75’ 콜센터 직원 ‘요코’
‘플랜 75’ 이용자의 유품을 처리하는 이주노동자 ‘마리아’

‘플랜 75’의 세상,
당신은 어떤 선택을 하시겠습니까?');
INSERT INTO tableMovie (seq, rank, kname, ename, ryear, rating, rtime, release, audience, plot) VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableMovie), 24, '에스파 : 퍼스트 페이지', 'Espa : My First page', 2023, '전체 관람가', 109, '2024-02-14', 6885, '2020년 데뷔 이후 ‘블랙 맘바(Black Mamba)’,
‘넥스트 레벨(Next Level)’,
‘세비지(Savage)’, ‘걸스(Girls)’ 등 매 앨범마다
전 세계적인 메가 히트를 기록하며
눈부신 성장을 이뤄낸 그룹 ‘에스파(aespa)’.

그들의 새로운 음악 세계와 독보적인 공연 실황은 물론,
지금껏 공개되지 않은 멤버 4인의 진솔한 인터뷰,
2023 첫 단독 콘서트
‘SYNK : HYPER LINE’의 백스테이지 비하인드까지.
‘에스파’의 찬란한 꿈의 기록.
그 첫 페이지가 스크린에서 펼쳐진다!');
INSERT INTO tableMovie (seq, rank, kname, ename, ryear, rating, rtime, release, audience, plot) VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableMovie), 25, '신차원! 짱구는 못말려 더 무비 초능력 대결전 ~날아라 수제김밥~', 'New Dimension! Crayon Shinchan the Movie: Battle of Supernatural Powers ~Flying Sushi~', 2023, '전체 관람가', 94, '2023-12-22', 937800, '최초의 3D CG! 제작 기간 7년
최고의 웃음과 감동! 최강의 스케일
옷까지 갈아입은 볼록 짱구 등장!

어느 날, 우주에서 날아온 검은 빛과 하얀 빛이
떡잎마을을 향해 떨어진다.
평소처럼 저녁밥을 손꼽아 기다리던 짱구는
하얀 빛에 정통으로 맞게 되고
그러자 온몸에 넘치는 신비한 힘!
힘에 몸을 맡긴 채 엉덩이에 의식을 집중하자
장난감들이 붕붕 떠오른다.

"엉덩이... 엉덩이가 뜨거워...!?
뭔지 몰라도 엄청난 힘을 손에 넣은 것 같아."

한편, 검은 빛을 통해 초능력을 손에 넣은 또 다른 남자는
이 세상의 파멸을 바라며 폭주하기 시작하는데,
위기에 처한 세상을 구하기 위한 유일한 희망이 바로 짱구...!?

올 겨울, 짱구의 엉덩이가 뜨겁게 타오른다!');
INSERT INTO tableMovie (seq, rank, kname, ename, ryear, rating, rtime, release, audience, plot) VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableMovie), 26, '위시', 'Wish', 2023, '전체 관람가', 95, '2024-01-03', 1403956, '제81회 골든 글로브 장편 애니메이션상 노미네이트
<겨울왕국> 시리즈,
<모아나>를 잇는 디즈니 100주년 기념작

“나 이렇게 소원을 빌어.
지금보다 더 큰 꿈 꿀 수 있는 우리”

소원이 실제로 이루어지는 마법의 왕국 ‘로사스’.
그 곳에 살고 있는 총명하고 꿈 많은 소녀 ''아샤''는
마음 속 깊이 사랑하는 ‘로사스’에 도움이 되기 위해
모두의 존경을 받는 ''매그니피코 왕''을 찾아갔다가
그의 숨겨진 계획을 알게 된다.

혼란에 빠진 ''아샤''의 간절한 부름에
무한한 에너지를 지닌 특별한 ‘별’이 하늘에서 내려오고
귀여운 염소 친구 ''발렌티노''와 함께 이들은
진심 어린 소원과 용기가
얼마나 놀라운 일들을 만들어낼 수 있는지 증명하기 위해
''매그니피코 왕''에 맞서기로 결심한다.

그러나 ''매그니피코 왕''은 자신의 힘을 이용해
''아샤''와 친구들을 위협하게 되고
이들은 큰 난관에 부딪히게 되는데...

2024년 새해, <겨울왕국> 시리즈 제작진이 선사하는
마법 같은 이야기가 찾아옵니다.');
INSERT INTO tableMovie (seq, rank, kname, ename, ryear, rating, rtime, release, audience, plot) VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableMovie), 27, '막걸리가 알려줄거야', 'FAQ', 2023, '전체 관람가', 91, '2024-02-28', 3087, '“왜 이렇게 살아야 해요?” 11살 동춘이가 질문했더니,
“톡톡-.- 톡톡톡-.-…” 막걸리가 로또 당첨번호를 말해줬다?!

국영수는 기본! 창의과학, 태권도, 미술, 코딩까지
이렇게 바쁜데, 이젠 페르시아어도 배워야 한다니…
멍 때리기가 유일한 취미인 인생 권태기 11살 동춘이에게
어느 날 우연히 발견한 막걸리가 말을 걸어온다.
이건 모스부호? 게다가 페르시아어라고?

인생이 궁금증 투성이인 동춘이에게
막걸리가 꼭 전하고 싶은 비밀은 뭘까?
');
INSERT INTO tableMovie (seq, rank, kname, ename, ryear, rating, rtime, release, audience, plot) VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableMovie), 28, '해피 투게더 리마스터링', 'Happy Together', 1997, '15세이상관람가', 97, '2023-03-30', 57548, '“우리 다시 시작하자”
그가 다시 시작하자고 하면
난 늘 그와 함께했다

홍콩을 떠나 지구 반대편 부에노스아이레스에 온 ‘보영’과 ‘아휘’
이과수 폭포를 찾아가던 중 두 사람은
사소한 다툼 끝에 이별하고 각자의 길을 떠난다.

얼마 후 상처투성이로 ‘아휘’의 앞에 다시 나타난 ‘보영’은
무작정 “다시 시작하자”고 말한다.
서로를 위로하며 점차 행복한 시간을 보내는 두 사람.

하지만 ‘보영’의 변심이 두려운 ‘아휘’와
‘아휘’의 구속이 견디기 힘든 ‘보영’은
또다시 서로의 마음에 상처 내는 말을 내뱉은 뒤 헤어지는데...');
INSERT INTO tableMovie (seq, rank, kname, ename, ryear, rating, rtime, release, audience, plot) VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableMovie), 29, '길위에 김대중', null, 2023, '12세이상관람가', 125, '2024-01-10', 124971, '목포의 청년 사업가, 국민과 함께 파란곡절 역사에 서다!

목포의 제일 가는 청년사업가 김대중.
탄탄대로를 걷던 그의 눈에 들어온 것은
이념의 정치에 희생되던 무고한 국민들이었다.
국민의 정치, 민주주의가 뿌리내린 세상을 만들기 위해
김대중은 정치인이 되기로 결심한다.
보장된 미래를 뒤로 하고 파란곡절의 길 위에 첫 발걸음을 내딛은
그 선택의 대가는 납치, 살해 위협, 투옥과 사형선고가 되어
그를 뒤흔들지만 죽음을 선고 받은 마지막 순간에서도
김대중은 조금의 흔들림 없이 외쳤다.
＂민주주의는 회복될 것입니다. 나는 그걸 확실히 믿고 있습니다.＂
다섯 번의 죽을 고비를 넘긴 사형수,
네 번의 국회의원 선거와 세 번의 대선 낙선을 거친
''낙선전문가'' 김대중 대통령의 일생이
대한민국 현대사 위로 아로새겨진다.');
INSERT INTO tableMovie (seq, rank, kname, ename, ryear, rating, rtime, release, audience, plot) VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableMovie), 30, '극장판 아이돌리쉬 세븐; LIVE 4bit BEYOND THE PERiOD DAY 2', 'IDOLiSH7 Movie: LIVE 4bit - BEYOND THE PERiOD DAY 2', 2023, '전체 관람가', 94, '2023-10-19', 38616, '새로운 시작을 너와, 이 스테이지에서!

‘블랙 오어 화이트 라이브 쇼다운’ 무대를 누빈
남성 아이돌계 탑 러너
IDOLiSH7 - TRIGGER - Re:vale - ŹOOĻ.

각자 다른 매력을 지닌 최고의 그룹들이 한자리에 모여
모두가 염원해온 꿈의 합동 무대를 선보인다.');
INSERT INTO tableMovie (seq, rank, kname, ename, ryear, rating, rtime, release, audience, plot) VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableMovie), 31, '외계+인 2부', null, 2021, '12세이상관람가', 122, '2024-01-10', 1429838, '반드시 돌아가야 한다. 모두를 지키기 위해

인간의 몸속에 가둬진 외계인 죄수의 탈옥을 막으려다
과거에 갇혀버린 ‘이안’(김태리)은
우여곡절 끝에 시간의 문을 열 수 있는 ‘신검’을 되찾고,
‘썬더’(김우빈)를 찾아 자신이 떠나온 미래로 돌아가려고 한다.
한편 이안을 위기의 순간마다 도와주는 ‘무륵’(류준열)은
자신의 몸속에 느껴지는 이상한 존재에 혼란을 느낀다.
그런 ‘무륵’ 속에 요괴가 있다고 의심하는
삼각산 두 신선 ‘흑설’(염정아)과 ‘청운’(조우진),
소문 속 신검을 빼앗아 눈을 뜨려는 맹인 검객 ‘능파’(진선규),
신검을 차지하려는 ‘자장’(김의성)까지 ‘이안’과 ‘무륵’을 쫓기 시작한다.

한편 현대에서는,
탈옥한 외계인 죄수 ‘설계자’가 폭발 시킨 외계물질 ‘하바’로 인해
수많은 사람들이 죽고,
우연히 외계인을 목격한 ‘민개인’(이하늬)은 이 사건을 파헤치기 시작한다.

모든 하바가 폭발하기까지 남은 시간은 단 48분,
시간의 문을 열고 무륵, 썬더, 두 신선과 함께 현재로 돌아온 이안.
마침내 모든 비밀이 밝혀진다!');
INSERT INTO tableMovie (seq, rank, kname, ename, ryear, rating, rtime, release, audience, plot) VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableMovie), 32, '블레이드 러너 2049', 'Blade Runner 2049', 2017, '15세이상관람가', 163, '2017-10-12', 325401, '인간과 리플리컨트가 혼재된 2049년.
인간의 통제를 벗어난 리플리컨트를 쫓는 블레이드 러너 ‘K’(라이언 고슬링)는
임무 수행 도중 약 30년 전 여자 리플리컨트의 유골을 발견하고
충격적으로 출산의 흔적까지 찾아낸다.

리플리컨트가 출산까지 가능하다는 사실이 알려지면
사회에 큰 혼란이 야기되므로 이를 덮으려는 경찰 조직과,
그 비밀의 단서를 찾아내 더욱 완벽한 리플리컨트를 거느리고
세상을 장악하기 위해 ‘K’를 쫓는 ‘니안더 월레스’(자레드 레토).

리플리컨트의 숨겨진 진실에 접근할수록
점차 정체성의 혼란을 겪게 되는 ‘K’는 과거 블레이드 러너였던 ‘릭 데커드’(해리슨 포드)를 만나
전혀 상상치 못한 진실을 마주하게 되는데..

# 리플리컨트: 21세기 초 만들어진 복제인간. 인간과 같은 지적 능력과 사고방식 그리고 신체적 조건을 갖춘, 노동력 제공을 위한 인간의 대체품
# 블레이드 러너: 인간의 통제를 벗어난 리플리컨트를 색출해 ‘제거’하는 임무를 가진 특수경찰');
INSERT INTO tableMovie (seq, rank, kname, ename, ryear, rating, rtime, release, audience, plot) VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableMovie), 33, '인투 더 월드', 'Migration', 2023, '전체 관람가', 91, '2024-01-10', 347488, '우린 멋진 모험을 하게 될 거야!
하지만 불시착했습니다. 어디로 가야 될까요?

가족을 과잉보호하는 아빠 ‘맥’ 때문
평생을 작은 연못에서 안전하게 살아온 말러드 가족.
하지만 호기심 가득한 남매 ‘댁스’와 ‘그웬’을 위해
새로운 세상을 모험하고 싶은 엄마 ‘팸’의 설득으로
가족들은 항상 꿈꿔온 자메이카로 생애 첫 가족 모험을 떠나기로 한다!

설렘 넘치는 시작과 달리 태풍을 만나 길을 잃고,
낯선 친구들을 만나고,
위험 가득한 뉴욕에 불시착하게 된다.
인생 처음으로 모든 계획이 틀어지고 위기에 빠진 말러드 가족은
서툴지만 서로를 의지하며 모험을 계속한다.

새로운 세상, 함께라면 두려울 것 없어!');
INSERT INTO tableMovie (seq, rank, kname, ename, ryear, rating, rtime, release, audience, plot) VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableMovie), 34, '장인과 사위', null, 2023, '12세이상관람가', 95, '2024-02-15', 1993, '마른 하늘에 장인어른?!

이제는 한물간 삼류 영화배우 박진기.
음반 제작이라는 목표의 삼류가수 도필과
영화제작이 목표인 진기는
투자자를 구하려 떠난 부산에서
잘해보려고 했던 것뿐인데 결과는 엉망진창.
결국, 집에서 쫓겨난 진기는
장모님의 계략으로 치매에 걸려 정신이
깜빡깜빡 끊임없이 사고를 치는 장인과의
기막힌 동거를 시작하게 되는데…

왕년에 한가닥 하던
삼류배우 사위 X 왕년에 한가락 하던 치매 노인 장인
가깝고도 먼 사이 ‘장인과 사위’의 대환장 강제 동거 라이프');
INSERT INTO tableMovie (seq, rank, kname, ename, ryear, rating, rtime, release, audience, plot) VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableMovie), 35, '나의 올드 오크', 'The Old Oak', 2023, '15세이상관람가', 113, '2024-01-17', 24294, '영국 북동부의 폐광촌에서
오래된 펍 ‘올드 오크’를 운영하는 ‘TJ’는
어느 날 마을로 들어선 낯선 버스에서
사진작가가 꿈인 소녀 ‘야라’를 만난다

마을 주민들은 불쑥 찾아온
‘야라’네 가족과 다른 사람들을 반기지 않지만
‘TJ’와 ‘야라’는 ‘올드 오크’에서
특별한 우정을 쌓아가는데···

“중요한 건 무언가를 함께 한다는 거야”');
INSERT INTO tableMovie (seq, rank, kname, ename, ryear, rating, rtime, release, audience, plot) VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableMovie), 36, '더 퍼스트 슬램덩크', 'The First Slam Dunk', 2022, '12세이상관람가', 125, '2023-01-04', 4864411, '전국 제패를 꿈꾸는 북산고 농구부 5인방의 꿈과 열정, 멈추지 않는 도전을 그린 영화');
INSERT INTO tableMovie (seq, rank, kname, ename, ryear, rating, rtime, release, audience, plot) VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableMovie), 37, '극장판 아이돌리쉬 세븐; LIVE 4bit BEYOND THE PERiOD DAY 1', 'LIVE 4bit BEYOND THE PERiOD IDOLiSH7 Movie: LIVE 4bit - BEYOND THE PERiOD DAY 1 劇場版アイドリッシュセブン ', 2023, '전체 관람가', 93, '2023-10-19', 27882, '새로운 시작을 너와, 이 스테이지에서!

‘블랙 오어 화이트 라이브 쇼다운’ 무대를 누빈
남성 아이돌계 탑 러너
IDOLiSH7 - TRIGGER - Re:vale - ŹOOĻ.

각자 다른 매력을 지닌 최고의 그룹들이 한자리에 모여
모두가 염원해온 꿈의 합동 무대를 선보인다.');
INSERT INTO tableMovie (seq, rank, kname, ename, ryear, rating, rtime, release, audience, plot) VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableMovie), 38, '뽀로로 극장판 슈퍼스타 대모험', null, 2023, '전체 관람가', 77, '2023-12-13', 386921, '뽀로로와 친구들은 전 우주를 통틀어
최고의 슈퍼스타를 뽑는 음악 축제
‘파랑돌 슈퍼스타 선발대회’ 축제에
참가하기 위해 모험을 떠난다.

파랑돌 행성에 불시착한 뽀로로와 친구들 앞에 나타난
열정 가득한 매니저 ‘스캣’의 도움으로
‘뽀로로 밴드’는 가까스로 설레는 예선 무대에 오른다.

한편, 악당 ‘빅벤’은 ‘스캣’과의 경쟁에서 이기기 위해
모든 것이 완벽한 AI 아이돌 ‘아이원’을 앞세워 대회에 참가하지만
‘뽀로로 밴드’의 예상치 못한 인기에
위기감을 느껴 급기야 방해 공작을 벌이게 되고,
뽀로로와 친구들은 마지막 공연을 앞두고
갑작스러운 위기를 맞이하는데…

12월, 우승보다 노는 게 제일 좋은
뽀로로 밴드의 아주 특별한 모험이 시작된다!');
INSERT INTO tableMovie (seq, rank, kname, ename, ryear, rating, rtime, release, audience, plot) VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableMovie), 39, '오키쿠와 세계', 'Okiku and the World', 2023, '12세이상관람가', 90, '2024-02-21', 1135, '“자네, ‘세계’라는 말을 아는가?”

19세기 에도 시대, 몰락한 사무라이 가문의 외동딸 ‘오키쿠’.
어느 날 복수의 결투에서 아버지를 잃고
간신히 목숨은 건지지만 목소리를 잃는다.
‘야스케’와 ‘츄지’는 에도의 공동주택을 돌며
세입자들의 인분을 사고팔아 생계를 유지한다.

아직 ‘세계’라는 단어조차 없었던 그 시절,
가장 낮고 더러운 곳에서 수줍게 사랑하고 씩씩하게 살아가며
그들만의 삶을 아름답게 꽃피우는 세 청춘.
말할 수 없고 쓰는 법도 모르지만
사랑하는 이에게 언젠가 전하고 싶은 말이 있다.
그러니 오늘도 희망을 잃지 않고 앞을 향해 뚜벅뚜벅 걸어간다.

그래, ‘세계’는 끝이 없는 거야!');
INSERT INTO tableMovie (seq, rank, kname, ename, ryear, rating, rtime, release, audience, plot) VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableMovie), 40, '메이 디셈버', 'May December', 2023, '청소년 관람불가', 117, '2024-03-13', 1314, '“왜 날 연기하고 싶어요?”
“전 이해하기 어려운 캐릭터가 좋아요”

신문 1면을 장식하며 미국을 떠들썩하게 만든
충격적인 로맨스의 주인공들인
‘그레이시’(줄리안 무어)와
그보다 23살 어린 남편 ‘조’(찰스 멜튼).

20여 년이 흐른 어느 날, 영화에서 그레이시를 연기하게 된 인기 배우
‘엘리자베스’(나탈리 포트만)가
캐릭터 연구를 위해 그들의 집에 머물게 된다.

부부의 일상과 사랑을 깊숙이 들여다보는 엘리자베스의 시선과
과거의 진실을 파헤치는 그의 잇따른 질문들이
세 사람 사이에 균열을 가져오는데...');
INSERT INTO tableMovie (seq, rank, kname, ename, ryear, rating, rtime, release, audience, plot) VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableMovie), 41, '크레센도 반 클라이번', 'Crescendo Live from the Cliburn', 2023, '전체 관람가', 178, '2024-01-31', 6582, '“예술성, 테크닉, 기교, 드라마, 짜릿함.
그는 피아노 연주의 극치를 보여주었다!”

반 클라이번 국제 피아노 콩쿠르에 참여하기 위해 모인
세계 음악계의 유망주 30명.
갖은 역경, 희생, 좌절을 딛고 무대에 오른
젊은 피아니스트들이 하나 둘 탈락하는 가운데,
참여자들은 한 천재의 등장을 목도하게 된다.

그는 평범한 또래 소년과 같이 수수한 18살 피아니스트 임윤찬.
하지만 그의 연주가 시작되자마자
현장은 깊은 전율로 가득 차기 시작하는데...

K-클래식 대표주자 ‘임윤찬’의 역사적인 우승 현장을 마주하다.
음악 팬들을 열광하게 할 단 하나뿐인 월드클래스 클래식 음악 영화!');
INSERT INTO tableMovie (seq, rank, kname, ename, ryear, rating, rtime, release, audience, plot) VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableMovie), 42, '오펜하이머', 'Oppenheimer', 2023, '15세이상관람가', 180, '7715245', 3182721, '“나는 이제 죽음이요, 세상의 파괴자가 되었다.”

세상을 구하기 위해 세상을 파괴할 지도 모르는 선택을 해야 하는 천재 과학자의 핵개발 프로젝트.');
INSERT INTO tableMovie (seq, rank, kname, ename, ryear, rating, rtime, release, audience, plot) VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableMovie), 43, '영화 스미코구라시-푸른 달밤의 마법의 아이', 'Sumikkogurashi: The Little Wizard in the Blue Moonlight', 2019, '전체 관람가', 64, '2024-02-07', 6252, '“보름달이 뜨면 마법사들이 온다고?”
어느 날 호수로 캠프를 떠난 ‘스미코’들.

보름달이 뜨는 밤, 마법사들이 내려와
‘스미코’들을 파티에 초대해 신나는 시간을 보낸다.

하지만 실수로 막내 마법사인 ‘파이브’가
‘스미코’ 세상에 남게 되는데...');
INSERT INTO tableMovie (seq, rank, kname, ename, ryear, rating, rtime, release, audience, plot) VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableMovie), 44, '전쟁과 평화', 'War and Peace', 1956, NULL, 208, NULL, 16287, NULL);
INSERT INTO tableMovie (seq, rank, kname, ename, ryear, rating, rtime, release, audience, plot) VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableMovie), 45, '엔드 오브 에반리온', '新世紀エヴァンゲリオン The End of Evangelion Neon Genesis Evangelion: The End of Evangelion', 1997, '청소년 관람불가', 87, '2024-01-17', 32141, '네르프에 있는 마기가 미국, 프랑스 등지의 마기 5대의 파상공격으로 인해 해킹을 당하고 있었다. 그러나 슈퍼인공지능 컴퓨터도 그 파상공격을 당해내지는 못하는 상황. 결국 감금되어 있던 리츠코 박사를 다시 부르게 된다. 그는 처음에는 자신을 감금한 것에 대해 불만을 표시하지만, 결국 겐도우의 명령에 따르고 예전 사도에게 사용한 캐스퍼의 방법인 마지막 로직 코드를 변경하여 완전 몰아내기로 간신히 마기를 복구한다. 그리고 666프로텍트와 B다낭형 방벽을 세워 62시간은 막을 수 있게 조치하는데...');
INSERT INTO tableMovie (seq, rank, kname, ename, ryear, rating, rtime, release, audience, plot) VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableMovie), 46, '비욘드 유토피', 'Beyond Utopia', 2023, '12세이상관람가', 115, '2024-01-31', 14747, '“이 영화는 세계에서 가장 위험한 나라 중 한 곳에서
탈출을 시도하는 사람들에 관한 영화입니다”
20여 년 전 북한을 탈출한 이현서의 충격적 증언.
북한에 남겨 두고 온 아들을 어떻게 든 데리고 오려는
탈북한 엄마 이소연.
어린 자매부터 할머니까지 목숨을 걸고
국경을 넘어 탈출하려는 5명의 일가족.
낙원이라 믿었던 땅을 떠나 자유를 향한
이들의 탈출을 헌신적으로 돕는 김성은 목사.
거짓의 유토피아 북한에서 자행되고 있는
인권의 실태를 보여주며 충격과 분노를,
낙원이라고 믿고 자란 땅을 탈출하려는 이들의
위험한 여정과 탈출을 위한 김성은 목사의
용감한 헌신을 생생하게 담아내 안타까움과 감동을 선사하는 다큐멘터리.
별점주기

1 2 3 4 5
0
리뷰 남기기
포토 (1)');
INSERT INTO tableMovie (seq, rank, kname, ename, ryear, rating, rtime, release, audience, plot) VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableMovie), 47, '예수는 역사다', 'The Case for Christ', 2017, '전체 관람가', 113, '2024-03-07', 175641, '이 영화는 실화다!

영화는 주인공 리 스트로벨이 기자로서
명예로운 상을 수상하고 진급하는 장면으로 시작한다.
승진을 자축하는 가족 식사 자리에서
사랑하는 딸의 사고로 위급상황에 처하게 되고,
거기서 만난 간호사 앨피를 통해
아내는 예수님을 믿게 되면서 이런 일련의 일들을
우연으로만 여긴 주인공은 아내로 인한 고민을
회사의 동료들과 상의하게 되고,
자신의 능력으로 아내가 믿기 시작한
기독교의 허구를 파헤쳐서
아내를 기독교라는 미신으로부터 구출해 내기 위한
취재를 시작하게 된다.
한편, 아내와의 갈등과는 별도의
총기 사건 취재도 진행하면서
범인으로 지목된 ‘힉스’를 통해서 듣게 되는 말과
그토록 미워하던 아버지의 장례식을 통해
그동안 예상하지 못하던 아버지의 사랑을 깨달으면서,
보이는 것만 믿을 수 있다고 믿던
주인공의 편견은 서서히 무너지기 시작하고,
남편의 구원을 위해 간절하고 끈질기게 기도하는
아내의 기도가 점점 쌓이면서,
기독교를 인정할 수 없었던 고집불통 기자는
십자가의 증거 앞에서
“ YOU WIN”이라고 항복을 선언하고 만다.

앞서 말한 대로 이 영화는 실화다.
예일대 로스쿨 출신으로 14년간 법률 전문기자였던 주인공이
예수님의 부활이 역사적으로 허구인 것을 밝혀내기 위한
예리한 질문으로 2년에 걸친 기간 동안
무신론자를 포함한 성경학자들과 신랄한 질문과
명쾌한 해답을 보여 주면서 진행되서 영화의 재미를 더한다.
- 예수의 부활을 과학적으로 증명할 수 있는가?
- 예수의 부활을 목격했다는 증언들은 성경에만 있는 것 아닌가?
- 그 기록들이 담긴 성경의 고고학적 신뢰성을 인정할 만한가?
- 500명이나 되는 증인은 모두 광신도여서
단체 환각 상태에서 같은 증언을 한 것은 아닐까?
- 예수가 애초에 죽지 않고 기절했다가 깨어난 것은 아닐까?');
INSERT INTO tableMovie (seq, rank, kname, ename, ryear, rating, rtime, release, audience, plot) VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableMovie), 48, '부활 그 소망 ', NULL, 2023, '전체 관람가', 84, '2024-02-00', 6183, NULL);
INSERT INTO tableMovie (seq, rank, kname, ename, ryear, rating, rtime, release, audience, plot) VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableMovie), 49, '노량: 죽음의 바다', 'Noryang: Deadly Sea', 2023, '12세이상관람가', 152, '2023-12-20', 4572133, '임진왜란 발발로부터 7년이 지난 1598년 12월.
이순신(김윤석)은 왜군의 수장이던
도요토미 히데요시가 갑작스럽게 사망한 뒤
왜군들이 조선에서 황급히 퇴각하려 한다는 것을 알게 된다.

“절대 이렇게 전쟁을 끝내서는 안 된다”

왜군을 완벽하게 섬멸하는 것이
이 전쟁을 올바르게 끝나는 것이라 생각한 이순신은
명나라와 조명연합함대를 꾸려
왜군의 퇴각로를 막고 적들을 섬멸하기로 결심한다.

하지만 왜군의 뇌물 공세에 넘어간 명나라 도독 진린(정재영)은
왜군에게 퇴로를 열어주려 하고,
설상가상으로 왜군 수장인 시마즈(백윤식)의 살마군까지
왜군의 퇴각을 돕기 위해 노량으로 향하는데…

2023년 12월, 모두를 압도할 최후의 전투가 시작된다!');
INSERT INTO tableMovie (seq, rank, kname, ename, ryear, rating, rtime, release, audience, plot) VALUES((SELECT nvl(MAX(seq), 0) + 1 FROM tableMovie), 50, '걸즈 앤 판처 최종장 제4화', 'Girls und Panzer das Finale: Part IV, ガールズ＆パンツァー 最終章 第４話', 2023, '12세이상관람가', 53, '2024-01-17', 10336, '지금이야말로 오아라이 여고의 진가를 보여줄 때!

중요한 존재인 아귀팀을 초반에 잃고
전례 없는 위기에 빠진 오아라이 여고 전차도 팀.
이에 케이조쿠 고교는 불시에 공격하며 포위망을 좁혀 온다.

한편, 쿠로모리미네 여고와 세인트 글로리아나 여고의 전투도
숨 막히는 격전이 벌어지는데…

동계 무한궤도배 준결승전,
과연 결승전 진출팀은 누가 될 것인가!');


-----------print with rating --------------------
select
    *
from TABLEMOVIE tM
    inner join tableMovieRating tMR on tM.SEQ = tMR.seq
        order by tM.SEQ asc;

