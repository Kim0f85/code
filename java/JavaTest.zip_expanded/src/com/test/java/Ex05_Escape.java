package com.test.java;

import java.awt.dnd.MouseDragGestureRecognizer;

import javax.swing.plaf.synth.SynthOptionPaneUI;

public class Ex05_Escape {
	public static void main(String[] args) {
		//Ex05_Escape.java
		
		//특수문자 > Escape Sequence 
		//- 컴파일러가 번역을 할 때, 소스의 문자를 그대로 출력하지 않고, 미리 약속된 ㅠㅛ현으로 바꿔서 출력하는 요소 
		
		//1. \n
		//-new line, line feed 
		//- 개행문자(엔터)
		
		char c1 = '\n';
		String s1 = "\n";
		
		//요구사항] "안녕하세요. 홍길동입니다." 출력해주세요. 
		//수정사항] "안녕하세요."와 "홍길동ㅇ입니다." 가각 다른줄에 출력. 중간에 엔터 쳐주세요
		
		//** 문자열 리터럴내에는 엔터를 작성할 수 없다. 
		String msg = "안녕하세요.\n홍길동입니다.";
		
		System.out.println(msg);
		
		
		//빈줄 입력 
		System.out.println();
		
		//2. \r
		//- carriage return 
		//- 캐럿의 위치를 현재 라인의 맨 앞으로 이동 
		//- 키보드 > Home키 역할 
		
		msg = "안녕하세요.\r홍길동.";
		System.out.println(msg);
		
		//운영체제의 엔터 
		//1. 윈도우 > \r\n
		//2.  MAC   > \r 
		//3. 리눅스 > \n
		
		System.out.println("하나\r\n둘"); //정석 
		System.out.println("하나\n둘");   //가능 
		
		
		//3. \t 
		//- 탭문자, tab 
		//- 탭이 뭐에요? 4ㄱ칸씩 띄는겁니다
		
		msg = "하나 둘	셋";
		System.out.println(msg);
		
		msg = "하나\t둘\t\t셋";
		System.out.println(msg);
		
		
		//4. \b
		//- backspace
		msg = "홍길도\b입니다.";//홍길입니다.
		System.out.println(msg);
		
		
		//5. \" , \' , \\
		//- 이미 역활이 있는 문자를 역활이 없게 만드는 작업 
		
		//요구사항] 화면 > 홍길동 : "안녕하세요." 
		msg = "홍길도: \"안녕하세요.\"";
		System.out.println(msg);
		
		//요구사항] 수업 폴더의 결로를 출력하시오. 
		//c:\class\code\java
		//Invalid escape sequence (valid ones are  \b  \t  \n  \f  \r  \"  \'  \\ )
		System.out.println("C:\\class\\code\\java");
		
		
		
		
	}
}
