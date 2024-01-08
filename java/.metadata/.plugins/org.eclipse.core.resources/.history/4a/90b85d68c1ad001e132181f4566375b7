package com.test.java;

public class Ex17_LocalVariable {
	
	int b = 20; //멤버 변수 
	
	public static void main(String[] args) {
		
		//Ex17_LocalVariable.java
		/*
			자바 변수의 종류 
			- 선언된 위치, 역할 차이 
			
			1. 멤버 변수, Member Variable 
				- 클래스 수업 
				
			2. 지역 변수, Local Variable 
				- 여태까지 사용한 변수 
				- 메서드내에서 선언한 변수 
				- 변수 스코프(Scope) > 변수의 사용 영역(범위)***
				
			지역 변수의 생명주기, Life Cycle
			- 변수가 언제 태어나서(메모리에 생성) ~ 언제 죽는지(메모리에 소멸)
			- 생성 > 변수 선언문이 실행될 때
			- 소멸 > 변수 선언문이 포함된 블럭을 빠져나갈때 
			
		*/
		
		int a = 10; // 지역변수 
		
		int num = 100; 
		checkNumber(num);
		
		aaa();
	}
	
	public static void aaa() {
		int a = 10;
		
		bbb(a);
		
	}

	public static void bbb(int a) {
		System.out.println(a);
		
	}

	public static void checkNumber(int num) {
		
	}
	
	public static void test1() {
		int c = 30; 
	}
	
	public static void test2() {
		int d = 40;
		int c = 50;
	}
	
}
