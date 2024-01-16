package com.test.java.obj;

public class Ex52_Generic {
	public static void main(String[] args) {
		//Ex52_Generic.java
		
		Item<String> s1 = new Item<String>();
		s1.c="홍길동";
		
		Item<Integer> s2 = new Item<Integer>();
		s2.c = 100;
		
		Pen<Boolean> p1 = new Pen();//사용자제 
		Pen<Boolean> p2 = new Pen<Boolean>();// 기존 문법
		Pen<Boolean> p3 = new Pen<>();// 현제 문법
		
		p1.a = true;
		p1.b = false;
		p1.c = true;
		
		Desk<String> d1 = new Desk<>();
		d1.setType("사무용");
		System.out.println(d1.getType());
		
		Laptop<String,Integer> macbook = new Laptop<>("맥북", 3000000);
		System.out.println(macbook.getA());
		System.out.println(macbook.getB());
		
		Laptop<String, String> galaxy = new Laptop<>("", "");
		System.out.println(galaxy.getA());
		System.out.println(galaxy.getB());
	}
}
//제네릭 클래스
//- T: 타입 변수 (매개변수 역할) > 참조형만 사용 가능 
//- <>: 인자 리스트
class Item<T> {
	public int a;
	public int b;
	public T c;//클래스 선언시에는 c의 자료형이 결정되지 않음. 객체를 생성할 결정
}

class Pen<T>{
	public T a;
	public T b;
	public T c;
}

class Desk<T>{
	private T type;
	
	public void setType(T type) {
		this.type = type;
	}
	
	public T getType() {
		return this.type;
	}
	
}

class Laptop<T,U>{
	private T a;
	private U b;
	
	public Laptop(T a, U b) {
		this.a = a;
		this.b = b;
	}
	
	public T getA() {
		return a;
	}
	
	public U getB() {
		return b;
	}
}

