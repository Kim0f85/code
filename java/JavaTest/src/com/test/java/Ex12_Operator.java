package com.test.java;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Ex12_Operator {
	public static void main(String[] args) throws IOException {
		
		//Ex12_Operator
		/*
			비교연산자 
			- >, >=, <, <=, = =(equal), !=(not equal)
			- 2항 연산자 
			- 피연산자들의 우위(동등) 비교
			- 피연산자는 숫자형을 가진다.
			- 연산의 결과가 boolean이다. (true, false)
			
		
		
		
		
		*/
		
		int a = 10;
		int b = 3; 
		
		System.out.printf("%d > %d = %b\n",a,b,a>b);
		System.out.printf("%d >= %d = %b\n",a,b,a>=b);
		System.out.printf("%d < %d = %b\n",a,b,a<b);
		System.out.printf("%d >= %d = %b\n",a,b,a<=b);
		System.out.printf("%d == %d = %b\n",a,b,a>b);
		System.out.printf("%d != %d = %b\n",a,b,a>b);
	
		//요구사항] 사용자 나이 입력 > 18새 이상이면 통과, 미만이면 거절 
//		System.out.print("나이 입력: ");
//		
//		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
//		
//		String input = reader.readLine();
//		
//		int age = Integer.parseInt(input);
//		
//		System.out.println(age >= 18);
//		System.out.println();
		
		// ==, != 
		//문자열(참조형)비교 
		
		int n1 = 100; 
		int n2 = 100;
		int n3 = 50;
		n3 = n3 + 50;
		
		System.out.println(n1==n2);
		System.out.println(n1 != n2);
		System.out.println(n3 == n1);
		
		String s1 = "홍길동";
		String s2 = "홍길동";
		String s3 = "홍";
		s3 = s3+"길동";
		
		System.out.println(s1==s2);
		System.out.println(s3);
		System.out.println(s1==s3);//false
		System.out.println(s1);
		
		//*** 문자열의 비교는 ==, != 연산자를 사용하면 안된다. 
		//*** 문자열의 비교는 equals() 메서드를 사용한다.
		
		System.out.println(s1.equals(s2));//s1==s2
		System.out.println(s1.equals(s3));//s1==s3
		System.out.println();
		System.out.println();
		System.out.println();
		
		/*
			
			논리 연산자 
			-&&(and), ||(or), !(not)
			- 2항 연산자(&&,||)
			- 1항 연산자(!)
			- 피연산자의 자료형이 boolean 이다. 
			- 연산의 결과가 boolean 이다. 
			- 피연산자를 정해진 규칙에 따라 연산을 한 후에 값을 반환
			
			A && B = ? 
			
			논리곱(x) 
			T && T = T
			T && F = F
			F && T = F
			F && F = F
			
			A || B = ? 
			
			논리합(x) 
			T || T = T
			T || F = T
			F || T = T
			F || F = F
		
			!A = ? 
			
			!T = F 
			!F = T
			
			베타적 논리합(xor)
			A ^ B = ?
			
			T ^ T = F
			T ^ F = T
			F ^ T = T
			F ^ F = F
			
			
		*/
		
		boolean f1 = true; 
		boolean f2 = false; 
		
		System.out.println(f1&&f2);
		System.out.println(f1||f2);
		System.out.println(!f1);
		System.out.println(f1^f2);
		
		//나이 입력 > 18새 이상 +60새 미만 
		int age = 25;
		System.out.println(18 <= age && age < 60);
		System.out.println(age >= 18 && age < 60); // 가독성이 더 좋은 코드 (주인공은 좌에)
		
		//연산자 우선 순서 
		//- 산술 연산자 > 비교 연산자 > 논리 연산자 
		
		/*
			
			대입 연산자, 할당 연산자 
			- = 
			- +=, -=, *=, /=, %= (복합 대입 연산자)
			- LValue(변수) = RValue(상수, 변수)
			- LValue와 RValue의 자료형이 동일해야 한다. > 형변환
			- 대입 연산자는 모든 연산자들 중 우선 순서가 가장 낮다. 
			- 대입 연산자는 연산 방향이 오른쪽> 왼쪽으로 실행한다. 
		
		*/
		
		int sum = 10 + 20 * 3;
		System.out.println(sum);
		
		int m1 = 100;
		int m2;
		int m3;
		
//		m2 = m1;
//		m3 = m1; 
		
		m3 = m2 = m1;
		
		System.out.println(m2);
		System.out.println(m3);
		
		//복합 대입 연산자 
		int n = 10;
		
		//n에 1을 추가하시오. >n의 값에 1을 더 값을 ㅜ에 다시 넣어라 > 누적 
		n = n+1;
		System.out.println(n);
		
		n += 1;//의 수식과 동일 
		System.out.println(n);
			
		n=n*2;
		System.out.println(n);//20
		
		n*=2;
		System.out.println(n);//40
		
		/*
			증감 연산자 
			- ++(증가), --(감소)
			- 1항 연산자
			- 피연산자는 숫자형을 가진다.
			- 누적 연산을 한다.
			- 기존의 값에 1을 더한다. 1을 뺀다. 
			
			*** 연산자와 피연사의 위치를 바꿀 수 있다. 
			***** 연산자의 위치에 따라 연산자 우선 순위가 달라진다. 
			1. ++n: 전위배치(전치) > 연산자 우선 순위가 가장 높다. 
			2. n++: 후위배치(후치) > 연산자 우선 순위가 가장 낮다 
		
		*/
		
		n= 10;
		
		n = n + 1;
		n += 1;
		++n; // 위 두게와 동일 
		
		
		/*
			
			조건 연산자 
			- ?:
			- 3항 연산자
			- A ? B : C
			- A: boolean > 조건으로 사용
			- B,C : 상수, 변수 > 연산의 결과로 사용
			- A가 참이면 B를 반환, A가 거짓이면 C를 반환 
			

		*/
		
		System.out.println(true ? "남자":"여자");
		System.out.println(false ? "남자":"여자");
		
		age = 25; 
		
		System.out.println(age>=18 ? "통과":"거절");
		
		//조건문(if문) 역할 
		
		n=5;
		
		System.out.println(n % 2 == 0 ? "짝수":"홀수");
				
		// 비트 연산자 
		
		a = 10;
		b = 5; 
		
		System.out.println(a & b);
		System.out.println(a | b);
		
				
		
	}
	
}
