package com.test.java;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Ex25_while {
	public static void main(String[] args) throws IOException {
		
		//Ex25_while.java
		/*
			while문, do while문
		
			if(조건식) {
				구현부;
			}
			
			while(조건식) {
				구현부;
			}
			
			do {
				구현부;
			}while(조건식);
		
		*/
		//m1();
		//m2();
		//m3();
		m4();
	}

	private static void m4() {
		//1~10 출력
		int n=1;
		while(n <= 10) {
			System.out.println(n);
			n++;
		}
		
		int m = 1;
		do {
			System.out.println(m);;
		}while(m<=10);
		
	}

	private static void m3() throws IOException {
		//자판기
		//- 루프 > (메뉴 출력 > 선택 > 결과) x N
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		boolean loop = true;
		String sel = "";
		
		while(loop) {
			System.out.println("==============");
			System.out.println("	자판기");
			System.out.println("==============");
			System.out.println("1. 콜라");
			System.out.println("2. 사이다");
			System.out.println("3. 박카스");
			System.out.println("4. 종료");
			System.out.println("---------------");
			
			
			System.out.print("선택: ");
			sel = reader.readLine();
			
			if(sel.equals("1")) {
				
				System.out.println("700원 입니다.");
				pause(reader);
				
			} else if (sel.equals("2")) {
				
				System.out.println("600원 입니다.");
				pause(reader);
				
			} else if (sel.equals("3")) {
				
				System.out.println("500원 입니다.");
				pause(reader);
				
			} else {
				loop = false;
			}
			
		}//whill
		
		System.out.println("자판기 종료");
		
	}//m3

	private static void pause(BufferedReader reader) throws IOException {
		System.out.println("계속하려면 엔터를 입력하세요..");
		reader.readLine();
	}

	private static void m2() {
		//1~100까지 누적하시오 
		int sum = 0;
		
		for (int i=1; i<=100;i++) {
			sum+=i;
		}
		System.out.println(sum);
		
		
		sum = 0;
		int num=1;
		while(num<=100) {
			sum+=num;
			num++;
		}
		System.out.println(sum);
		
	}

	private static void m1() {
		//요구사항] 1~10까지 출력하시오.
		
		for(int i = 1;i<=10;i++) { // 초기식; 조건식; 증감식 
			System.out.println(i);
		}
		System.out.println();
		
		int num = 1;
		
		while(num <= 10) {
			System.out.println(num);
			num++; //증감식
		}
		
		
		
	}
}
