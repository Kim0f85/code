package com.test.java;

public class Ex10_Casting {
	public static void main(String[] args) {
		
		//Ex10_Casting.java
		/*
			
			형변환, 자료형변환 
			- Promotion, Casting 
			- 하나의 자료형을 다른 자료형으로 변환하는 작업
			- 코드 작성을 유연하게 하기 위에서 사용
			- int > double
			- float > short
			
			1. 암시적 형변회(자동 형변환), Promotion
				- 큰형 = 작은형 
				- 100% 안전
				
			2. 명시적 형변화(강제 형변환), Casting
				- 작은형 = 큰형 
				- 경우에 따라 다르다 
		
		
		
		*/
		
		byte b1;
		short s1; 
		
		b1 = 10;//원본 
		
		
		//LValue = RValue 
		//***** LValue = RValue의 자료형은 반드시 동일
		
		//(자료형) : 형변환 연산자 
		
		//Short = Byte 
		s1 = b1; // 데이터 값 복사 (암시적 형변환)
		//Short = Short 
		//s1=(short)b1;
		
		
		System.out.println(s1); //복사본 
		
		
	
		byte b2;
		short s2; 
		
		s2 = 10;
		//b2 = s2;
		b2 = (byte)s2;
		
		System.out.println(b2);
		
		//기업 은행 > 계좌 
		int m1; 
		long m2 = 30000000000L;
		
		//계좌 이체 
		//4 = 8 
		m1 = (int)m2;
		
		System.out.printf("계좌이체결과 : %d원\n",m1);
		
		
		//큰형 = 작은형 
		//long = int 
		//long = short
		//long = byte 
		//int = short
		//int = byte 
		//short = byte 
		
		//작은형 = 큰형 
		//byte = long 
		//byte = int 
		//byte = short 
		//short = long 
		//short = int 
		//int = long 
		
	
		//정수형 리터럴은 int이다. 
		//실수형 리터럴은 double이다.
		
		//byte = int
		//작은형(1) = 큰형(4)
		//명시적 형변환
		
		byte a1 = 10; 
		byte a2 = (byte)10; //정법 
		
		short a3 = 10; 
		
		int a4 = 10;
		
		//큰형(8) = 작은형 (4)
		//암시적 형변환
		long a5 = 10;
		
		//작은형(4) = 큰형(8)
		float f1 = (float)3.14;
		float f2 = 3.14F;
		
		double f3 = 3.14;
		
		
		//정수 > 정수 
		//실수 > 실수 
		//실수 > 정수 
		//정수 > 실수 
		
		int n1 =100; //원본(4)
		float n2;	 //복사본(4)
		
		//float = int
		//암시적 형변환
		n2 = n1;
		
		System.out.println(n2);
		
		int n3; // 복사본(4)
		float n4 =100; //원본(4)
		
		//Type mismatch: cannot convert from float to int
		//암시적 형변환 지원하지 않음 (바이트 사이즈가 같으나 형이 지원하는 숫자의 크기를 기준으로 한다
		n3 = (int)n4;
				
		System.out.println(n3);
				
		long n5;
		float n6 = 10;
		
		//long(8) = float(4)
		n5 = (long)n6;
		
		System.out.println(n5);
		
		System.out.println(Long.MAX_VALUE);
		System.out.println(Float.MAX_VALUE);
		
		//*** 정수와 실수간의 크기 비교는 단순한 메모리 크기가 아닌 실제 저장하는 수의 범위로 비교한다.
		
		//byte(1) < short(2) < int(4) < long(8) <<< float(4) < double(8)
		
		//char 형변환 
		char c1 = 'A'; //내부로는 숫자 데이터 
		System.out.println(c1);
		System.out.println((int)c1);
		
		
		System.out.println((char)65);
		
		char c2; //2byte
		short t2; //2byte 
		
		c2 = '가';
		
		//short(2) = char(2)
		t2 = (short)c2; //문자 코드 값으로 변환
		
		System.out.println(t2);
		
		char c3;
		short t3; 
		
		t3 = 65;
		
		//둘다 벗어날 경우에 수가 있음으로 암시적은 불가능하지만 명시적으로는 가능하다. 
		//character는 short로 변환하지 말고 항상 int로 
		//***** char는 반드시 int로만 형변환한다. 
		c3 = (char)t3; 
		System.out.println(c3);
		
		//***** 값형과 참조형간에는 형변환이 절대 불가능하다. 
		
		//Cannot cast from String to int
		//System.out.println((int)"A");
		//참조형은 주소값을 가지고 있기 때문에 변환이 안된다 
		//참조형을 값형으로 바꿀수는 있다. 하지만 형변환이 아니다. 
		System.out.println((int)'A');
		
		
		//100 -> "100"
		String txt2 = String.valueOf(100); // 정석 
		
		String txt3 = 100+"";//위랑 동일한 작업 (식의 순서 상관 없음)
		String txt4 = ""+100;
		String txt5 = 3.14 +"";
		String txt6 = true +"";
		
		
	}
}
