package com.test.java;

import java.io.IOException;

public class Ex07_Input {
	public static void main(String[] args) throws IOException  {
		
		//Ex07_Input.java
		
		/*
			
			콘솔입력
			1. System.in.read()
				- System.out.print()의 반대 
				- 1문자 입력 가능 
				- 문자 코드값을 반환 
				- 한글 입력 불가능(2byte 문자 미지원, ASCII 문자만 지원)
			
			2. BufferReader 클래스 
			
			3. Scanner 클래스 
			
			
		*/
		
		//요구사항] 사용자에게 문자 1개를 입력> 화면에 출력하시오. 
		
		//1. 라벨 출력 
		//2. 문자 입력
		//3. 문자를 화면에 출력
		
		System.out.print("문자 입력: ");
		
		//사용자로부터 키보드 입력을 받아서 입력한 문자를 돌려준다.
		//- 현재 상태 > 사용자가 키를 입력하기를 대기하는 상태 
		//- 사용자 입력을 해야 대기 상태가 헤제된다. 
		//- 키보드로 input은 버퍼로 
		//- read는 버퍼에서 읽어는 행동 
		int code = System.in.read();
		
		System.out.println("출력: "+code);
		System.out.printf("출력: %d\n",code);
		System.out.printf("출력: %c\n",code);
		
		//나머지는 \r\n(엔터)도 입력 된걸로 간중 한다
		code = System.in.read();
		System.out.printf("출력: %d\n",code);
		System.out.printf("출력: %c\n",code);
		
		code = System.in.read();
		System.out.printf("출력: %d\n",code);
		System.out.printf("출력: %c\n",code);
		
		code = System.in.read();
		System.out.printf("출력: %d\n",code);
		System.out.printf("출력: %c\n",code);
		
		code = System.in.read();
		System.out.printf("출력: %d\n",code);
		System.out.printf("출력: %c\n",code);
		
		
		
		
	}
}
