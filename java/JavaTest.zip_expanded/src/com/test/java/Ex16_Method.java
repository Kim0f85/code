package com.test.java;

public class Ex16_Method {
	public static void main(String[] args) {
		
		
		
		//void > 반환타입
		//hello > 메서드명 > *** 메서드명은 캐멀 표기법
		//() > 인자리스트 
		
		//void == 없다 , ==null
		
		//메서드의 반환값(반환타입)
		
		int num = test();
		
		System.out.println(checkNumber(10));
		System.out.println(checkNumber(5));
		
	}//main
	
	public static void getName() {
		
		String name = "홍길동";
		
		return; // 빈 리턴문 > 강제로 메서드 종료 
		
	}
	
	
	public static int getNum() {
		
		int num = 100; 
		
		return num;//메서드 종료 + 값 반환
		
		//System.out.println("메서드 종료"); //unreacherable code
		
	}
	
	
	
	public static String checkNumber(int num) {
		
		return num%2==0?"짝수":"홀수";
	}
	
	
	public static int test() {
		
		int a = 10; 
		int b = 20; 
		int c = a + b;
		
		return c;
	}
	
}
