package com.test.java;

public class Ex03_Variable {
	public static void main(String[] args) {
		
		//Ex03_Variable.java
		
		//모든 자료형 + 변수 생성하기 
		
		//정수 
		byte b1; 
		b1 = 100; //100> 상수(=데이터) 정수형 상 수, 정수형 리터럴
		System.out.println(b1);
		
		//Type mismatch: cannot convert from int to byte
		//b1=128;
		//b1=-129;
		
		b1 = Byte.MAX_VALUE; //byte 최대값
		b1 = Byte.MIN_VALUE; //byte 최소값 
		
		short s1; 
		s1 = 100; 
		System.out.println(s1);
		
		s1 = 128; 
		System.out.println(s1);
		
		s1=Short.MAX_VALUE;
		s1=Short.MIN_VALUE;
		
		int n1;
		n1 = 100; 
		
		System.out.println(n1);
		n1 = Integer.MAX_VALUE;
		n1 = Integer.MIN_VALUE;
		
		long l1; 
		l1 = 100; 
		
		//The literal 30000000000 of type is out of range 
		System.out.println(l1);
		l1 = Long.MAX_VALUE;
		l1 = Long.MIN_VALUE; 
		
		//***** LValue와 RValue는 반드시 자료형이 동일해야 한다. 
		//왼쪽(변수) = 오른쪽(상수); 
		//LValue = RValuel;
		
		//모든 상수들도 자료형을 가진다. 
		//정수형 상수는 인티져 자료형을 가진다. 
		//따라서 정수형 상수를 인티져 자료형 말고 다른 자료형으로 변형하기 위해서는 뒤에 L 확장자를 적어준다 
		
		b1 = 100; //byte = int
		s1 = 100; //short = int
		n1 = 100; //int = int 
		l1 = 100; //long = int
		l1 = 100L;
	
		//---------------------------------
		
		//실수 
		//- ****실수형 상수는 double 형이다. 
		
		
		//단정도형 
		float f1;
		f1 = 3.14F; //전과 동일하게 F를 부쳐준다 .  
		//Type mismatch: cannot convert from double to float
		System.out.println(f1);
		
		
		
		//배정동형 
		double d1; 
		d1 = 6.28;
		System.out.println(d1);
		
		//차이점 
		f1 = 123.12345678910123456789101234567891012345678910F;
		d1 = 123.12345678910123456789101234567891012345678910F;
		
		System.out.println(f1);
		System.out.println(d1);
		//float가 double보다 부정확하다. float의 정수 보관 능력이 떨어짐
		
		double d2 = 0.2; 
		double d3 = 0.1; 
		System.out.println(d2+d3);
		
		//실수를 정확하게 더하기. 
		//0.2 x 10 = 2
		//0.1 x 10 = 1 
		//2 + 1 = 3 
		//3 / 10 = 0.3
		
		//문자형 
		char c1; 
		c1 = 'A'; //홑따옴표 > 문자형 상수 (리터럴) 
		System.out.println(c1);
		
		c1 = '1';  //숫자 1과 전혀 무관, 문자로서의 1이다. 
		System.out.println(c1);
		
		
		//c1 = '홍길동'  한글자보다 길어거 인식 불가
		System.out.println(c1);
		
		
		//논리형 
		//- boolean(불리언), bool(불)
		boolean flag; 
		
		flag = true; // 논리형 상수 (리터럴)
		flag = false;
		
		System.out.println(flag);
		
		//-----------------------------
		
		//추가
		//- 참조형 
		
		//String, 문자열 
		//- 문자 열 > 문자들이 열을 지어 있는 형태 > 문자 집합 > char를 여러개 모아놓은 자료형 
		
		//홍길동 
		//char name = '홍길동'; 불가능 
		
		String name; 
		
		name = "홍길동"; // 문자열 상수 (리터럴)
		
		char m1 = 'A';
		String m2 = "A";
		
		String m3 = "";// 0개의 문자열 > 빈문자열, empty string 
		// 문자열 변수를 초기화할 때 많이 사용 
		
		//값형 (기본형, 원시형) vs 참조형 
		//- 메모리의 생성되는 규칙이 다르다. 
		int a = 10; //값형 
		String b = "홍길동"; // 참조형
		
		//우리가 만드는 모든 변수는 stack에 생성된다. 
		
		//null > null상수 
		
		//각 자료형별(8+1) > 변수 1개 생성 > 값을 대입 > 출력
		// x 10번식 
		
		
		//샘플
		//1, 데이터 선정 
		//- 제몸무게 
		
		//2. 1의 데이터를 저장할 자료형 선택 
		//- 몸무게 범위 + 형태 
		//- 1 ~ 150kg + 실수 = float / double > float 
		
		//3. 변수 생서 + 초기화
		float myWeight; 
		
		myWeight = 75.2F;
		
		//4. 마무리 > 문장을 생성해서 출력 
		//- 제 몸무게는 75.2kg입니다. 
		System.out.println("제 몸무게는 "+myWeight+"kg입니다");
		
		
	}
}
