package com.test.java.obj.inheritance;

public class Ex41_Overriding {
	public static void main(String[] args) {
		//Ex_Overriding.java
		
		/*
			메서드 오버로딩, Method Overloading
			- 메서드 이름 동일 x N 생성 
			
			
			메서드 오버라이딩, Method Overriding
			- 클래스 상속할 때 발생 
			- 메서드 재정의 > 상속받은 메서드를 수정하는 기술
		
		*/
		OverridingParent hong = new OverridingParent();
		
		hong.name = "홍길동";
		hong.hello();
		
		OverridingChild jhong = new OverridingChild();
		
		jhong.name = "홍철수";
		jhong.hello();
		
	}
}
//동네 사람
class OverridingParent {
	
	public String name;
	
	public void hello() {
		System.out.printf("안녕하세요. 좋은 아침입니다. 저는 %s입니다\n", this.name);
	}
}

class OverridingChild extends OverridingParent {
	
}
