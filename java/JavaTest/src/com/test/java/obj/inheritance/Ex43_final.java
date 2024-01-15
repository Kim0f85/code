package com.test.java.obj.inheritance;

import java.util.Calendar;

public class Ex43_final {
	public static void main(String[] args) {
		
		//Ex43_final.java
		/*
			final 키워드 
			- 한번 결정하면 바꿀 수없다.
			- 안정성이 높아진다. 
			- 유연성이 떨어진다.
			
			1. 변수 적용 (지역 변수, 멤버 변수)
				- 초기화 이후에 값을 변경할 수 없다. 
				- 상수 
			
			2. 메서드 적용
				- 상속 시 오버라이딩 방지 
			
			
			3. 클래스 적요 
				- 상속을 방지 
		
		
		
		*/
		
		final int A = 10; //되도록 선언과 동시에 초기화를 권장 
		final int B;
		B = 20;
		
		System.out.println(Calendar.YEAR);
		
//		final int MALE = 1;
//		final int FEMALE = 2; 
		
		
		Student s1 = new Student();
		s1.name = "홍길동";
		s1.age = 20;
		s1.gender = Gender.MALE;
		
		Student s2 = new Student();
		s1.name = "호호호";
		s1.age = 22;
		s1.gender = Gender.FEMALE;
		
		
	}//main
	
	
}

class Gender {
	public static final int MALE = 1;
	public static final int FEMALE = 2; 
}





class Student {
	public String name; 
	public int age;
	
	public int gender;//성별 > 남자(1), 여자(2)
	
	
}
//The type FinalChild cannot subclass the final class FinalParent
//최종 클래스 
final class FinalParent{
	final public String test() {
		return "성별";
	}
}

 

//class FinalChild extends FinalParent{
//
//	@Override
//	public String test() {
//		// TODO Auto-generated method stub
//		return super.test();
//	}
//	
//}

