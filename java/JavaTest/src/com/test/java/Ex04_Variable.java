package com.test.java;

public class Ex04_Variable {
	public static void main(String[] args) {
		
		int a = 10; 
		int b = 20; 
		
		// A+B > 이향 연산자(피연산자를 2개)
		// 연산자 우선순위 > 1 + 2 * 3
		// 연산자 방향 (자바는 좌에서 우방향으로 연산한다.)
		System.out.println(a+b);
		
		
		//주민등록번호 입력 > 출력
		// ex)950105
		
		int jumin1 = 950105;
		
		System.out.println("주민번호: " + jumin1);
		
		jumin1= 030711;
		
		System.out.println("주민번호: " + jumin1);
		
		//자바의 기수법
		//- 10진수 
		//- 8진수 
		//- 16진수 
		//- 2진수 
		
		System.out.println(10);  //10진수 
		System.out.println(010);  //8진수 
		System.out.println(0x10);//16진수 > 색생값 표현 
		System.out.println(0b10); //2진수 
		
		
		//실수 리터럴 
		double d1 = 1200;
		double d2 = 1.2e+3;
		
		System.out.println(d1);
		System.out.println(d2);
		d1 = 0.012;
		d2 = 1.2e-2;
		
		System.out.println(d1);
		System.out.println(d2);
		
		}
}
