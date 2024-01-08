package com.test.java;

import java.io.BufferedReader; // 클래스 임포트 
import java.io.IOException;
import java.io.InputStreamReader;



//import java.io.*; 와일드 카드 (모든 클래스)

public class Ex08_BufferReader {
	public static void main(String[] args) throws IOException {
		
		//Ex08_BufferReader.java
		
		//BufferedReader 클래스
		//1. 유니코드 입력 가능(한글입력 가능)
		//2. 문장을 입력 가능 
		
		
		//요구사항] 사용자로부터 문자 1개를 입력받아 화면에 출력
		
		//Ctrl + Shift + O : 필요 클래스 임포트 
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
//		
		//A(65) ~ Z(90)
		//a(97) ~ z(122)
		//0(48) ~ 9(57)
		//\r(13)
		//\n(10)
		//스페이스(32)
		//탭(9)
		
		//완성형 vs 조합형 
		//가(44032) ~ 힣(55203)
		
		
		System.out.print("입력: ");
		int code = reader.read();
		System.out.println(code);
		
		
//		//콘솔로부터 키보드값을 입력받을 수 있는 도구 
//		System.out.print("문자 입력: > ");
//		
//		int code = reader.read();
//		
//		System.out.println(code);
//		System.out.printf("%c\n",code);
		
		//이름 입력 
//		System.out.print("이름: ");
//		
//		String name = reader.readLine(); // 입력된 라인 전체를 읽기
//		
//		System.out.printf("안녕하세요. %s님\n",name);
//		
//		//나이 입력 
//		System.out.print("나이: ");
//		String age = reader.readLine(); //20(x) > "20"(o)
//		System.out.printf("%s님의 나이는 %s살입니다.\n",name,age);
		
		//요구사항] 사용자로부터 2개의 숫자를 입력받아 두 수를 더하시오 
		System.out.print("첫번째 숫자: ");
		String input1 = reader.readLine();
		
		
		System.out.print("두번째 숫자: ");
		String input2 = reader.readLine();
		
		System.out.println(input1+input2);
		
		//문자열 > (변환) > 숫자 
		//- Interger.parseInt()
		//- Byte.parseByte()
		//- Short.parseShort()
		//- Long.parseLong()
		//- Float.parseFloat()
		//- Double.parseDouble()
		//- Boolean.parseBoolean()
		
		
//		int num1 = Integer.parseInt(input1);
//		int num2 = Integer.parseInt(input2);
//		
//		System.out.println(num1+num2);
		
		double num1 = Double.parseDouble(input1);
		double num2 = Double.parseDouble(input2);
		
		System.out.println(num1+num2);
	}
}
