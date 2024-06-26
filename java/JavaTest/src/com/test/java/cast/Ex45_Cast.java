package com.test.java.cast;



public class Ex45_Cast {
	public static void main(String[] args) {
		//com.test.java.cast > Ex45_Cast.java
		
		/*
			형변환, type casting
			1. 값형 형변환
				- 값형 끼리 형변환(boolean 제외)
				- byte, short, int, long, float, double, char
				- 문제 발생 > 오버 플로우 (overflow)
			
			2. 참조형 형변환 
				- 클래스끼리의 형변환 
			
			참조형 형변환
			- 상속 관련 
			- 상속 관계에 있는 클래스끼리만 형변환이 가능하다. 
			- 직계 > 가능 
			- 방계 > 불가능
			
			1. 업캐스팅, Up Casting
				- 암시적인 형변환
				- 자식 클래스 > (형변환) > 부모 클래스
				- 100% 가능 
				
			2. 다운캐스팅, Down Casting
				- 명시적인 형변환
				- 부모 클래스 > (형변환) > 자식 클래스 
				- 100% 불가능 
				
		*/
		
		Parent p1;
		Child c1;
		
		c1 = new Child();//자식 객체 > 원본 역할 
		
		
		//복사 
		//Parent = Child
		//암시적인 형변환
		//부모클래스 = 자식클래스
		//업캐스팅 
		//100% 안전
		p1 = c1;
		//p1 = (Parent)c1;
		
		//값형 형변환 검증?
		//- 데이터 복사 후 복사본의 값을 확인 
		
		p1.a = 20;
		p1.b = 30;
		
		Parent p2 ;
		Child c2 ;
		p2 = new Parent();
		
		//복사
		//Child = Parent
		//명시적 형변환
		//자식클래스 = 부모클래스 
		//다운 캐스팅 == 100% 불가능
//		c2 = (Child)p2;
//		
//		c2.a= 10;
//		c2.b= 20;
//		c2.c= 30;
//		c2.d= 40;
		
		Parent p3;
		Child c3; 
		
		c3 = new Child();
		
		//업캐스팅
		p3 = c3;
		
		Child c4;
		
		//자식클래스 - 부모클래스 
		//다운 캐스팅 밠ㅇ > 100%
		c4= (Child)p3; 
		
		c4.a = 10;
		c4.b = 20;
		c4.c = 30;
		c4.d = 40;
		
		
		//패키지가 달라서 안보임 
		//Point p4 = new Point();	
		
		
	}
}

class Parent{
	public int a;
	public int b;
}

class Child extends Parent{
	public int c;
	public int d;
}




