CREATE TABLE tableExpertReview (
	seq NUMBER PRIMARY KEY,                           -- 리뷰 번호
    rseq NUMBER REFERENCES tableMovie(seq) NOT NULL,  -- 영화 번호
	reviewrate NUMBER,                       -- 별점
	name VARCHAR2(100) NOT NULL,                      -- 전문가 이름
	reviewcontent VARCHAR2(2000) NOT NULL             -- 평가
);
--drop table tableExpertReview;
--1. 윙카
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(1, 1, 6, '박평식', '팀 버튼 카카오에 스필버그 흑설탕을 듬뿍');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(2, 1, 7, '이용철', '그의 노래, 그의 초콜릿이 주는 행복감에 취한다');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(3, 1, 5, '허남웅', '단 초콜릿 위에 더 단 토핑이 잔뜩');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(4, 1, 7, '임수연', '로알드 달보다는 폴 킹의 인장이 강한, 무해한 낙관의 세계');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(5, 1, 6, '김철홍', '달콤하지만 하늘에 뜰 정도는 아닌');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(6, 1, 7, '이우빈', '뒷모습에 빛이 내릴 때, 옆모습에 어둠이 드리울 때 증명되는 할리우드 배우의 고전적 마력');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(7, 1, 7, '정재현', '낯선 문화를 향한 관용과 연대를 녹인 폴 킹의 달콤한 낙관');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(8, 1, 6, '이자연', '결국 ‘읽을 줄 아는 사람’이 되는 노동자들의 낙관과 전략, 달콤한 마법');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(9, 1, 7, '김혜리', '<패딩턴> 사단이 제조한 MZ세대를 위한 초콜릿');

--2. 건국전쟁 --null
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(10, 2, null, null, null);

--3. 귀멸의 칼날: 인연의 기적, 그리고 합동 강화 훈련으로 --null
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(11, 3, null, null, null);

--4. 시민덕희
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(12, 4, 6, '이유채', '걸림돌을 제거하고 추진력 있게 나아간다');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(13, 4, 5, '허남웅', '쉼표 없이 분출하기 바쁜 감정의 레이스');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(14, 4, 6, '이용철', '각자도생해야 하는 시민의 나라, 그래서 눈물겨운 해피엔딩');        

--5. 소풍
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(15, 5, 5, '박평식', '석양을 붙잡고 추억을 꺼내다');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(16, 5, 6, '김소미', '애틋함과 서러움, 유머와 결기를 오가는 생사의 로드무비');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(17, 5, 6, '조현나', '삶과 죽음 사이 60년의 세월을 겸허히 돌아본다');

--6. 도그데이즈
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(18, 6, 5, '박평식', '보들보들 따스하나 ‘개밥에 도토리’도');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(19, 6, 5, '이용철', '견공의 압박, ‘행복해야 돼!’');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(20, 6, 6, '임수연', 'JK필름의 김치찌개에, 강아지라는 치트키');

--7. 아기상어 극장판: 사이렌 스톤의 비밀
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(21, 7, 6, '조현나', '세심한 관계성과 중독성 강한 노래. 어른 관객도 홀릴 만하다');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(22, 7, 6, '이자연', '<아기상어>의 강점이 무엇인지 명확히 아는 뮤직버스터 세계관');

--8. 데드맨
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(23, 8, 5, '박수용', '이름은 선명하지만 번호는 흐릿한 명함');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(24, 8, 5, '이유채', '공들인 세계를 좀더 펼쳐 보였다면');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(25, 8, 5, '이자연', '앞다퉈 질주하는 전투 속에 반박자씩 느리게 오는 쾌감');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(26, 8, 5, '정재현', '다소 어수선한 이름 석자 지키기');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(27, 8, 5, '허남웅', '더 흥미로울 소재가 스테레오 타입의 주인공으로 어떻게 평범해지는가');

--9. 아가일
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(28, 9, 6, '박평식', '급가속과 급변속으로 농락하네');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(29, 9, 6, '이용철', '원작이 <만주인 후보>인가?');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(30, 9, 6, '허남웅', '반전의 연막탄을 색색으로 남발한다');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(31, 9, 6, '조현나', '제임스 본드와 제이슨 본을 아우르려는 감독의 야심');

--10. 스노우 퍼핀즈 --null
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(32, 10, null, null, null);

--11. 사운드 오브 프리덤
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(33, 11, 5, '박평식', '타이틀백과 클로징 자막이 더 소름끼쳐');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(34, 11, 4, '이용철', '흥행의 불가사의');

--12. 추락의 해부
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(35, 12, 7, '박평식', '눈보라에 갇혀 살점을 뜯기다');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(36, 12, 8, '이용철', '멀고 길게 돌아가나 그 길은 의혹을 전제한 게 아니다');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(37, 12, 8, '허남웅', '증명하려 들수록 미궁에 빠지는 인간 감정의 진실 혹은 아이러니');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(38, 12, 9, '김소미', '진실공방을 표방해 자기 서사 쓰기의 버거움과 고립감을 그린다');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(39, 12, 6, '김철홍', '인간 주관의 불완정성에 대한 선처를 바라는 n번째 상소');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(40, 12, 8, '오진우', '사운드와 이미지가 어긋난 진실에 관하여');
 INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(41, 12, 7, '이우빈', '탈진실의 뉘앙스를 법정물에 적용하는 편의성엔 점차 의문이');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(42, 12, 8, '정재현', '진술로 은유하는 시네마의 고유 미학');
 INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(43, 12, 7, '유선아', '콘텍스트로 꿰어낸 텍스트');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(44, 12, 8, '박수용', '정교한 카메라를 따라 관계의 피부를 절개하는 의심의 칼날');
 INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(45, 12, 9, '김혜리', '사실과 진실의 포물선이 교차할 때');

--13. DMZ 동물 특공대
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(46, 13, 7, '이우빈', '인간이 미안해. 터전을 지키려는 동물들의 착한 작당');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(47, 13, 6, '이용철', '평화를 불원하는 자들에 대한 재미있는 은유');

--14. 우견니 --null
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(48, 14, null, null, null);

--15. 바튼 아카데미
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(49, 15, 7, '박평식', '‘공존의 인간학’에 웃다가도 울컥');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(50, 15, 9, '이용철', '재회의 시간: 뉴아메리칸시네마, 아버지, 캣 스티븐스, 할 애슈비');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(51, 15, 7, '김철홍', 'F학점을 받아야만 배울 수 있는 것이 있다');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(52, 15, 9, '정재현', '결함뿐인 삶에 비탄이 몰아쳐도, 오늘은 내 곁의 약한 이를 지키리');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(53, 15, 9, '이자연', '닭장의 횃대 같은 삶에도 왼쪽 눈을 알아보는 친구가 주어진다. 앙트레 누');

--16. 괴물
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(54, 16, 7, '박평식', '눈보라에 갇혀 살점을 뜯기다');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(55, 16, 8, '이용철', '멀고 길게 돌아가나 그 길은 의혹을 전제한 게 아니다');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(56, 16, 8, '허남웅', '증명하려 들수록 미궁에 빠지는 인간 감정의 진실 혹은 아이러니');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(57, 16, 9, '김소미', '진실공방을 표방해 자기 서사 쓰기의 버거움과 고립감을 그린다');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(58, 16, 6, '김철홍', '인간 주관의 불완정성에 대한 선처를 바라는 n번째 상소');

--17. 정글번치 : 월드투어
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(59, 17, 6, '이용철', '어느 동물도 혐오스럽지 않게, 바른 표현');

--18. 이프온리
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(60, 18, 5, '박평식', '또 왔구나, 가사만 바꾼 할리우드 배뱅이굿');

--19. 주경삼림 리마스터링 --null
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(61, 19, null, null, null);

--20. 서울의 봄
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(62, 20, 7, '박평식', '권력이 영원할 줄 아는 사악한 바보들에게');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(63, 20, 6, '이용철', '검사의 봄에 되돌아보는, 뱀의 욕망이 낳은 탄식과 울분의 밤');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(64, 20, 7, '안시환', '여러모로 아슬아슬하다');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(65, 20, 7, '임수연', '‘어떻게 성공했지?’라는 궁금증과 하나회를 향한 분노가 왔다 갔다');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(66, 20, 7, '이유채', '‘전두광 영화’가 되지 않았다는 점이 놀랍다');

--21. 오늘 밤, 세계에서 이 사랑이 사라진다 해도
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(67, 21, 5, '박평식', '각설탕이 목에 걸린 기분');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(68, 21, 6, '이용철', '허구는 힘이 세다, 그만큼 울어버렸다');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(69, 21, 5, '김수영', '익숙한 일본 감성으로 풀어낸 기억상실 로맨스');

--22. 화양연화 --null
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(70, 22, null, null, null);

--23. 플랜
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(71, 23, 5, '유선아', '뭉툭하고 은근한 암시, 단호한 시선');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(72, 23, 6, '박평식', '다큐에 버금가는 현실감, 고독의 공포');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(73, 23, 8, '이용철', '<소일렌트 그린>을 현실로 살아내야 할 줄이야, 하긴 그게 2022년이었으니');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(74, 23, 7, '허남웅', '자발적 선택으로 포장된 사회적 강요가 초래할 노년의 근미래, 아니 다가온 현재');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(75, 23, 7, '조현나', '고령화 시대의 미래, 그곳에 희망이 존재하냐고 묻는다면');

--24. 에스파 : 퍼스트 페이지 --null
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(76, 24, null, null, null);

--25. 신차원! 짱구는 못말려 더 무비 초능력 대결전 ~날아라 수제김밥~
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(77, 25, 6, '이자연', '7년을 뛰어넘은 기술적 시도, 7년 전에 멈춘 농담들');

--26. 위시
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(78, 26, 6, '박평식', '족보 깔고 목청 돋워 체면치레');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(79, 26, 5, '이용철', '100주년맞이 역사 바로 세우기 혹은 역사 지우기');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(80, 26, 5, '김철홍', '그들의 두 번째 100주년 영화를 보고 싶다는 소원이 생기다');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(81, 26, 7, '박수용', '지난 세기 디즈니의 영광의 순간들을 모아');

--27. 막걸리가 알려줄거야
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(82, 27, 6, '박평식', '11살 고뇌가 몽실몽실');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(83, 27, 6, '이용철', '조용한 귀염둥이가 할 말은 다한다');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(84, 27, 8, '김철홍', '김다민의 상상력 학원이 구해줄 거야');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(85, 27, 8, '김우빈', '이상함을 주저하지 않는 과감한 상상력의 역량');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(86, 27, 6, '정재현', '어린이의 자주성에 관한 흥미롭고 달큰한 접근');

--28. 해피 투게더 리마스터링
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(87, 28, 8, '박평식', '"드러냄과 감춤의 오묘한 리듬. 60년대 안토니오니에 버금가는 연출력
"');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(88, 28, 8, '유지나', '스스로를 아류화시키던 왕가위는 다시 자신의 영화세계를 구원한다');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(89, 28, 9, '이명인', '또 새로움! 왕가위의 스타일엔 유효기간이 없다');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(90, 28, 8, '김영진', '사랑할 때와 헤어질 때. 그 공기를 포착한 성숙한 영화');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(91, 28, 8, '황진미', '지구반바퀴를 돌아도 떨칠 수 없는, 이토록 간절한 사랑이여');

--29. 길위에 김대중
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(92, 29, 6, '박평식', '불덩이로 방패로 젖은 눈으로 걷다');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(93, 29, 6, '이자연', '쉽게 굽히지 않고 쉽게 미끄러지지 않고 오직 전진');

--30. 극장판 아이돌리쉬 세븐; LIVE 4bit BEYOND THE PERiOD DAY 2 --null
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(94, 30, null, null, null);

--31. 외계+인 2부
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(95, 31, 5, '박평식', '엎질러진 물 다시 담기');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(96, 31, 5, '이용철', '모두가 조증 증후군');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(97, 31, 5, '허남웅', '과유불급의 기획, 절치부심의 편집');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(98, 31, 7, '김철홍', '함께 리듬타긴 쉽지 않지만, 언젠가 다시 만나고 싶은 세계');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(99, 31, 5, '정재현', '통제되지 못한 미시우주가 끝없이 팽창하는 것을 지켜보는 안타까움');

--32. 블레이드 러너 2049
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(100, 32, 8, '김성훈', '"인간이든 복제인간이든 옳은 행동만이 중요하다
"');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(101, 32, 6, '박평식', '잘 계승했으나 사유의 폭이 넓진 않다');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(102, 32, 7, '이용철', '안드로이드는 양을 꿈꾸는가');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(103, 32, 10, '장영엽', '죽기 전에 보아야 할 SF영화가 한편 늘었다');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(104, 32, 10, '한동원', '35년간의 기다림, 마침내 응답받다');

--33. 인투 더 월드
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(105, 33, 6, '이용철', '못 먹어본 ‘더커로렌지’, 앞으로도 못 먹게 된다.');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(106, 33, 6, '최현수', '생태주의적 유머로 그려낸 <오리 날다>');

--34. 장인과 사위 --null
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(107, 34, null, null, null);

--35. 나의 올드 오크
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(108, 35, 7, '박평식', '‘나눔과 투쟁’을 당부하며 떠나는 감독께 감사');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(109, 35, 7, '허남웅', '공감을 넘어 손잡고 행진하며 행동을 촉구하는 켄 로치의 여전한 저력');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(110, 35, 7, '조현나', '어떤 비극의 순간에도 연대를 외치는 신념');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(111, 35, 8, '이용철', '함께하는 한끼가 디올 백보다 소중함을 모른다면, 인간 실격');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(112, 35, 8, '김소미', '어떤 직설은 그 자체로 슬픔을 자아낸다');

--36. 더 퍼스트 슬램덩크
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(113, 36, 7, '송경원', '꺾이지 않는 마음, 변하지 않는 감동. 움직이는 만화의 힘');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(114, 36, 8, '이용철', '너희 시간에만 가능한 로망, 걸작의 재확인');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(115, 36, 8, '허남웅', '결과를 아는데도 이렇게 가슴 뛸 일이야!');

--37. 극장판 아이돌리쉬 세븐; LIVE 4bit BEYOND THE PERiOD DAY 1 --null
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(116, 37, null, null, null);

--38. 뽀로로 극장판 슈퍼스타 대모험
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(117, 38, 6, '남지우', '뽀로로 탄생 20주년 스페이스오페라');

--39. 오키쿠와 세계
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(118, 39, 7, '박평식', '‘나눔과 투쟁’을 당부하며 떠나는 감독께 감사');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(119, 39, 8, '오진우', '몇번의 컬러 전환으로 힐끔 보이는 사랑과 세계');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(120, 39, 9, '이우빈', '사카모토 준지가 찍는 ‘얼굴’의 아름다움이 시대를 초월한다');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(121, 39, 9, '이용철', '<일출> <라탈랑트> <인정 종이풍선> 그리고 <오키쿠와 세계>로구나');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(122, 39, 10, '김철홍', '세계를 인식해낸 자에게 무한한 배설의 축복이');

--40. 메이 디셈버 --null
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(123, 40, null, null, null);

--41. 크레센도 반 클라이번 --null
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(124, 41, null, null, null);

--42. 오펜하이머
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(125, 42, 8, '박평식', '지성, 야심, 윤리의 빅뱅 그리고 잔해');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(126, 42, 9, '이용철', '보자마자 20자평 쓰는 게 너무 힘든 경우');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(127, 42, 7, '김철홍', '<스펙터클 제로로 써내린 프로메테우스 탄원서');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(128, 42, 9, '오진우', '강렬한 빛과 후폭풍 같은 그림자로 구성된 오펜하이머의 시간');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(129, 42, 9, '이우빈', '작정하고 벼른 영화 작가의 펜촉, 비범한 잉크, 휘황한 필치');

--43. 영화 스미코구라시-푸른 달밤의 마법의 아이
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(130, 43, 5, '박평식', '소파에 누워 군것질하듯');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(131, 43, 5, '이용철', '정말 귀엽지만, 서사의 주인공으로서는 한계');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(132, 43, 6, '이유채', '꿈이라는 정체성, 몽글몽글 차오르는 행복');

--44. 전쟁과 평화 --null
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(133, 44, null, null, null);

--45. 엔드 오브 에반리온
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(134, 45, 7, '이용철', '세기말을 여전히 유효하게 만드는 이름');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(135, 45, 9, '이우빈', '애니메이션보다 큰 텍스트, 전세계 오타쿠의 마음을 LCL의 바다로');

--46. 비욘드 유토피
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(136, 46, 8, '이자연', '유토피아란 허상을 스스로 건너뛴 사람들에게 슬픔이 그만 멎기를');

--47. 예수는 역사다
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(137, 47, 4, '김보연', '답은 정해져 있으니 넌 예수만 믿으면 된다는 영화');

--48. 부활 그 소망 --null
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(138, 48, null, null, null);

--49. 노량: 죽음의 바다
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(139, 49, 6, '박평식', '교실에서 바다로, 장엄한 사족으로');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(140, 49, 7, '유선아', '서정과 역동의 무르익은 완급 조절');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(141, 49, 7, '이용철', '어쨌든 기념비적인 시리즈로 남을 듯');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(142, 49, 6, '이우빈', '잊힐(힌) 얼굴들을 되살리는 선상의 백병전');
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(143, 49, 7, '임수연', '죽음을 끝내기 위해 더 많은 죽음을 택한 숭고의 딜레마');

--50. 걸즈 앤 판처 최종장 제4화 --null
INSERT INTO tableExpertReview (seq, rseq, reviewrate, name, reviewcontent)
    VALUES(144, 50, null, null, null);

----------------------
-- SELECT * FROM tableExpertReview;

-- drop table tableExpertReview;




