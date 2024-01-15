package com.test.java.obj;

public class Ex46_Abstract {
	public static void main(String[] args) {
		//Ex46_Abstract
		
		/*
			
			구체적이다 <> 추상적이다.
			
			추상, Abstract 
			
			추상 클래스, abstract class
			
			추상 메서드, abstract method
			
		
		*/
		
		//같은 패키지 
		//- Ex30_Class.java > Point 클래스 
		
		
		keyboard k1 = new keyboard();
		
		k1.a = 10;
		k1.aaa();
		//k1.bbb();
		
		//- Cannot instantiate the type Mouse
	//	Mouse m1 = new Mouse();
		
		//m1.bbb();
		
		
	}//main
}

//추상 클래스 
//- 추상 메서드를 가질 수 있다.
//- 객체를 생성할 수 없다. 
//- 일반 클래스의 부모 클래스가 될 수 있다. > 자식 클래스들에게 강제로 추상 메서드를 구현하게 만든다. > 모든 객체들이 공통된 사용버(메서드)를 가지게 된다
abstract class Mouse{
	
	//구현된 멤버를 가진다.
//	public int a;
//	public void aaa() {
		
//	}
	
	//추상 멤버를 가진다. 
	//public abstract void bbb();

	public String model;
	public int price;
	
	public void info() {
		System.out.println("model: "+this.model);
		System.out.println("price: "+this.price);
	}
	
	public abstract void click();
}

//The type G305 must implement the inherited abstract method Mouse.click()
class G305 extends Mouse {
	public void click() {
		System.out.println("저렴한 스위치를 사용해서 클릭합니다");
	}
}

class M410 extends Mouse{

	@Override
	public void click() {
		System.out.println("비싼 스위치를 사용해서 클릭합니다.");
		
	}
	
}

//일반 클래스는 추상 멤버를 가질 수가 없다.
class keyboard{
	public int a;
	public void aaa() {
		System.out.println("타이핑을 합니다");
	}
	//public abstract void bbb();
}