package com.test.java;

public class Ex0_Variable {
	
	public static void main(String[] args) {
		
		/*
		
			자료형 + 변수 
			
			변수, Variable
			- 여러 가지 값으로 변할 수 있는 수 (표면상의 정의)
			- 개발자가 명령어를 사용해서 메모리에 할당받은 공간 
			- 각 bit 마다 물리적인 주소 > 메모리 번지 (주소)
			- 
			
			1. 변수 생성하기 
			- 자룔형 변수명; 
			
			2. 변수 초기화 
			- 변수명 = 값; 
			- =(대입 연산자)
			
			3. 변수 사용하기 
			- 출력, 연산, 조건, 기록, 등.......
			- 변수명
			
		*/
		
		//int 국어;
		int kor;
		kor = 100; 
		
		System.out.println(kor);
		
		// 학생 1명의 영어점수를 정장한 후 화면에 다시 출력하시오. 
		// 1. 데이터 성질을 파악 > 영어점수 
		//	 a. 형태 > 정수 / 실수 > 정수 
		//	 b. 길이 > 0 ~ 100 
		
		// 2. 1의 결과에 따라 적당한 자료형 선택 
		//	 - byte 
		
		// 3. 2의 결과로 자료형으로 변수 생성하기 
		byte eng;
		eng = 90; 
		
		System.out.println(eng);
		
		// 변수(값) 수정하기 
		eng = 95; // 덮어쓰기 
		
		System.out.println(eng);
		
		//수학 점수 > 80
		byte math; 
		math = 80;
		System.out.println(math);
		
		//변수명을 만들 때 규칙 
		// 1. 영문자 + 숫자 +'_' 사용한다. > 관습적
		// 2. 숫자로 시작 불가능 > 물리적
		// 3. 예약어(키워드) 사용 불가능 > 물리적 
		// 4. 의미있게 (*********) 
		
		
		byte kor1; 
		byte kor_1; 
		byte korean_score;
		
		// 동일한 이름의 변수를 만들 수 없다. 
		
		// 변수 선언하는 방식 
		int n1; // 선언 > 선언직후 > 비어있는 상태 > 널(null)
		n1 = 100;// 초기화 
		
		int n2 = 200; //선언 + 초기화 
		
		int n3;
		int n4;
		
		int n5,n6; 
		
		int n11 = 10 , n12 = 20, n13 = 30; 
		
		//지도 좌표 (x,y)
		double x1; //우리집 x좌표 
		double y1; //우리집 y좌표 
		
		double x2, y2;//친구집 x좌표, 친구집 y좌표
		
		double x3, //마트 x좌표
			   y3; //마트 y좌표  
		
		// 변수는 값을 가지고 있지 않은 상태에서는 어는 용도로든 사용이 불가능하다. 
		int m; 
		
		System.out.println();
		//식별자(변수이외의 다른 요소) 명명법(패턴)
		//1. 헝가리언 표기법 
		//2. 파스칼 표기법
		//3. 캐멀 표기법
		//4. 스네이크 표기법 
		//5. 케밥 표기법
		
		//1. 헝가리언 표기법
		//- 식별자를 만들때 식별자의 접두어로 자료형을 표시한다. 
		//- 여즘엔 잘 사용 안함 
		//- 사용) 인터페이스명 
		int age; 
		int intAge; 
		
		//2. 파스칼 표기법
		//- 식별자의 첫문자를 대문자 표기 + 나머지 문자를 소문자. 
		//- 2개 이상의 합성어 > 각 단어의 첫문자를 대문자 표기. 
		//- 사용) 클래스명 
		
		int englishscore;
		int EnglishScore;
		
		//3. 캐멀 표기법
		//- 식별자의 첫문자를 소문자 표기 + 나머지 문자를 소문자 
		
		//- 2개 이사의 합성어 > 가단어의 첫문자를 대문자 표기 
		//- 사용) 변수명, 메서드 명 
		
		int mathscore;
		int MathScore;// 좋지 않은 적용
		int mathScore;// 캐멀 표가법
		
		//4. 스네이크 표기법 
		//- 전부 소문자로 표기 
		//- 합성어 > 각단어를 '_'로 연결 
		//- 사용) 마음대로 
		int englishScore;//캐멀
		int english_score;//스네이크 
		
		//5. 케밥 표기법
		//- 전부 소문자로 표기 
		//- 합성어 > 각단어를 '-'로 연결 
		//- HTML, CSS > 사용
		//int english-score; 
		
		//데이터 중 일부는 값을 변화시키면 안되는 값들이 존재 
		//double pi = 3.14; 
		//pi = 3.55; 
		
		//final 변수 = 상수 (constant)
		//final double pi = 3.14;
		
		//pi = 상수
		//3.14 = 데이터 상수 > 리터럴(literal)
		
		//상수는 모든 대문자로 만든다. (변수와 구분하기 위해서)
		final double PI = 3.14;
		
	}
	
}
