package com.test.java;

public class Ex18_Method {
	public static void main(String[] args) {
		
		//Ex18_Method
		/*
			
			메서드 오버로딩, method overloading 
			- 같은 이름의 메서드를 여러개 만드는 기술 
			- 메서드의 인자 리스트를 다양한 형태로 구성해서, 같은 이름의 메서드를 여러개 만드는 기술 (면접 단골 질문)
		
			메서드 오버로딩을 하는 이유?
			- 성능 향상 > x 
			- 개발자에게 도움 > o
			
			
			메서드 오버로딩 구현 조건 가능 
			1. 매개변수의 개수 
			2. 매개변수의 자료형 
			
			메서드 오버로딩 구현 조건 불가능 
			1. 매개변수의 이름
			2. 반환값의 자료형 
			
			메서드 만드는 중..
			1. public static void test() {}				//O
			2. public static void test() {}				//x, 1번
			3. public static void test(int n) {}		//O
			4. public static void test(int m) {}		//X, 3번
			5. public static void test(int n, int m) {}	//O 
			6. public static void test(String s) {}		//O 
			6. public static int test() {}				//x 
			
			
			
			오버로딩 중에는 매개변수 차이를 인지할수 없다. 
		*/
		//요구사항] 선을 그리는 메서드를 선언하시오. 
		//요구사항] --------
		//요구사항] ********
		
//		drawLine();
//		System.out.println("	성적표");
//		drawLine();
//		
//		
	}//main 
//	
//	
//	
//	public static void drawLine() {
//		
//		System.out.println("===============");
//	}
//	
//	public static void drawLine() {
//		
//		System.out.println("----------------");
//	}
//	
//	public static void drawLine() {
//		
//		System.out.println("****************");
//	}
//	
//	public static void drawLine() {
//		
//		System.out.println("===============");
//	}
	
	public static void drawLine(String c) {
		
		System.out.println(c);
		System.out.println(c);
		System.out.println(c);
		System.out.println(c);
		System.out.println(c);
		System.out.println(c);
		System.out.println(c);
		System.out.println(c);
		System.out.println(c);
		System.out.println(c);
		
	}
	
	//네이밍 규칙 > 변수명, 메서드명, 클래스명 등.....
	
	//K&R
	public static void m1() {
		
	}
	
	//Allman
	public static void m2() 
	{
		
	}
	
	
	
	
}