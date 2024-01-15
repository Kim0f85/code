package com.test.java.obj;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.Scanner;

public class Ex49_Object {
	public static void main(String[] args) {
		//Ex49_Object.java
		
		//Object 클래스 
		//- 모든 클래스의 부모 클래스이다. 
		//- 업캐스팅 적용 > 모든 자료형을 담을 수 있는 자료형 
		
		
		//m1();
		m2();
		
	}//main

	private static void m2() {
		//참조형 = (형변환)참조형 
		//부모클래스 = 자식클래스
		Object o1 = new AAA();
		
		//불가능 작업
		//눈에 안보이는 작업 > 박싱(Boxing) 발생
		Object o2 = 100;
		Object o3 = new Integer(100);
		
		int a1 = 100; 
		Integer a2 = new Integer(100);
		System.out.println(a1==a2);//Integar 클래스는 int 값형이 가끔씩 참조타입으로 사용해야 하는 경우 대신 그 역할을 하기 위해 제공되는 클래스
		
		//Wrapper Class
		//- Byte > Byte
		//- short > Short
		//- .. 
		
		Integer a3 = 100;
		System.out.println(a3*2);//unboxing 발생 
		
		o2 = 100;
		System.out.println((Integer)o2*2);
		System.out.println((int)o2*2);
		
		//박싱(언박싱) > 비용 발생 !!
		
		
	}

	private static void m1() {
		AAA a1 = new AAA();
		AAA a2 = new BBB(); //부모 변수 = 자식 객체 > 업캐스팅 
		AAA a3 = new CCC();
		
		Object o1 = new AAA();
		Object o2 = new BBB();
		Object o3 = new CCC();
		
		Object o4 = new Scanner(System.in);
		Object o5 = new BufferedReader(new InputStreamReader(System.in));
		Object o6 = new Employee();
		
		Object o7 = "홍길동";
		Object o8 = new int[3];
		
		//값형 <- (형변환 불가능) -> 참조형 
		Object o9 = 100;
		Object o10 = true;
		
		//자료형을 신경 쓰지도 않아도 되는 편리한 집합(*****************)
		//자료형을 신경 쓰지도 않아도 되는 단점;;;;;;;;;;;;;;;;;;
		
		//*** object 배열에는 무엇이든 담을 수 있다.!! 하지만, 처음 담은 자료형을 나머지 방에도 담는다. 
		Object[] list = new Object[10];
		list[0] =100;
		list[1] =100;
		list[2] =100;
		list[3] ="문자열";
		list[4] =true;
		
//		for(int i = 0 ; i<list.length ; i++) {
//			System.out.println((int)list[i]*2);
//		}
	}
}

class AAA{
	
}

class BBB extends AAA{
	
}

class CCC extends BBB{
	
}