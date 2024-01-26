package com.test.java;

public class Ex15_Method {
	public static void main(String[] args) {
		//Ex15_Method.java
		
		//public static void hello()
		
		//void > 반환타입
		//hello > 메서드명 > *** 메서드명은 캐멀 표기법
		//() > 인자리스트 
		
		//메서드 인자리스트 
		//- 파라미터(parameters)
		//- 인자 (Arguments)
		//- 매개변수 
		
		//요구사항] '홍길동' 에게 인사를 하는 메서드를 구현하시오 
		//요구사항] '아무개' 에게 인사를 하는 메서드를 구현하시오 
		//요구사항] '테스트' 에게 인사를 하는 메서드를 구현하시오 
		//요구사항] 우리 강의실의 모든 사람에게 각각.....
		
		hello();
		hello2();
		hello3();
		
		helloeveryOne("홍길동");
		helloeveryOne("아무개");//실인자 (Real Args)
		
		checkAge(25);
		checkAge(10);
		checkAge(45);
		
		long a = 25;
		checkAge((int)a);
		
		checkScore(60, 90, 70);
		
		checkScore(0, 0, 0);
		
	}// main
	/**
	 * 성적을 평가합니다
	 * @param kor 국어 점수 
	 * @param eng 영어 점수 
	 * @param math 수학 점수 
	 */
	public static void checkScore(int kor, int eng, int math) {
		int total = kor + eng + math; 
		
		double avg = total/3.0;
		
		String result = avg >= 60? "합격":"불합격";
		
		System.out.printf("평균 점수 %.1f점은 %s입니다\n",avg, result);
	}
	
	
	
	public static void checkAge(int age) {
		String result = age >=18 ? "통과":"거절";
		
		System.out.printf("입력한 나이 %d세는 %s입니다\n",age, result);
	}
	
	public static void hello() {
		//구현부 
		System.out.println("홍길동님. 안녕하세요.");
		
		
	}

	public static void hello2() {
		//구현부 
		System.out.println("아무개님. 안녕하세요.");
		
		
	}
	
	public static void hello3() {
		//구현부 
		System.out.println("테스터님. 안녕하세요.");
		
		
	}
	
	public static void helloeveryOne(String name) {//가인자 (Formal Args)
		//구현부 
		//String name = "홍길동";
		System.out.println(name+"님. 안녕하세요.");
		
		
	}
	
	
}//class
