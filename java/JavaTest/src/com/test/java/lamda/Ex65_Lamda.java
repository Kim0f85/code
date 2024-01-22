package com.test.java.lamda;

public class Ex65_Lamda {
	public static void main(String[] args) {
		//Ex65_Lambda.java
		/*
			
			람다식, Lambda Expression
			- 함수형 프로그래밍 방식을 지원하는 표현식 
			- 람다식 사용하면 코드가 간결해진다.
			- 자바 > 컬렉션(배열) 조작을 위해서 제공 
			
			- 자바의 메서드 표현 
			- 람다식은 매개변수를 가지는 코드블럭이다.
			- 자바의 람다식은 인터페이스를 사용해서 만든다. 
			- 자바의 람다식은 익명 객체를 만드는 표현을 감소화시킨 기술이다.'
			
			람다식 형식
			- 인터페이스 변수 = 람다식 
			ex) MyInterface m1 = () -> {};
			
			(매개변수) -> {구현부};
			a. (매개변수): 추상 메서드의 인자리스트
			b. ->: 화살표(Arrow), 구현부 호출하는 역할 
			
		
		*/
			
		//요구사항] MyInterface를 구현한 객체를 생성하시오.
		
		//Case 1. 클래스 선언 + 객체 생성 
		MyInterface m1 = new MyClass();
		m1.test();
		
		
		//Case 2. 익명 객체 생성 
		MyInterface m2 = new MyInterface() {
			
			@Override
			public void test() {
				System.out.println("익명 클래스에서 구현한 메서드");
			}
		};
		m2.test();
		
		//Case 3. 람다식 
		MyInterface m3 = () -> {
			System.out.println("람다식으로 구현한 메서드");
		};
		m3.test();
		
		TestInterface t1 = new TestInterface() {

			@Override
			public void aaa() {
				// TODO Auto-generated method stub
				
			}

			@Override
			public void bbb() {
				// TODO Auto-generated method stub
				
			}
		};
			
			
//			TestInterface t2 = ()->{
//				
//			}
			
			//추상 메서드의 형식에 따라
			//- 매개변수  유/무
			//- 반환값 유/무
			
		NoParameterNoReturn pr1 = new NoParameterNoReturn() {
			
			@Override
			public void call() {
				System.out.println("pr1");
				
			}
		};
		pr1.call();
		
		NoParameterNoReturn pr2 = ()->{
			System.out.println("pr2");
		};
		pr2.call();
		
		
		NoParameterNoReturn pr3 = ()->System.out.println("pr3");
		
		ParameterNoReturn pr4 = (int n)->{
			System.out.println(n);
		};
		pr4.call(10);
		pr4.call(20);
		pr4.call(40);
		
		//*** 람다식의 매개변수 자료형을 생략 수 있다. 
		ParameterNoReturn pr5 = (n) ->{
			System.out.println(n);
		};
		pr5.call(10);
		pr5.call(20);
		
		//*** 람다식의 매개변수 ()을 생략할 수 있다.
		ParameterNoReturn pr6 = n ->{
			System.out.println(n);
			
		};
		pr6.call(10);
		
		ParameterNoReturn pr7 = n-> System.out.println(n);
		pr7.call(30);
		
		MultiParameterNoReturn pr8 = (String name,int age)->{
			System.out.println(name + ","+age);
		};
		pr8.call("홍길동", 20);
		
		MultiParameterNoReturn pr9 = (name, age)->{
			System.out.println(name + ","+age);
		};
		pr9.call("홍길동", 20);
		
		MultiParameterNoReturn pr10 = (name, age)->System.out.println(name + ","+age);
		pr10.call("호호호", 30);
		
		
		noParameterReturn pr11 = ()->{
			return 10;
		};
		System.out.println(pr11.call());
		
		//*** 구현부에 return문이 유일하면 {}와 return을 생략할 수 있다.
		noParameterReturn pr12 = ()-> 10;
		
		ParameterReturn pr13 = (int a, int b)->{
			return a+b;
		};
		System.out.println(pr13.call(3, 10));
		
		ParameterReturn pr14 = (a,b)->a+b;
		System.out.println(pr14.call(100, 200));
		
		
		
	}//main
}

interface MyInterface{
	void test();
}

class MyClass implements MyInterface{

	@Override
	public void test() {
		System.out.println("실명 클래스에서 구현한 메서드");
	}
	
}

interface TestInterface{
	void aaa();
	void bbb();
}

interface NoParameterNoReturn{
	void call();
}
interface ParameterNoReturn{
	void call(int n);
}
interface MultiParameterNoReturn{
	void call(String name , int age);
}
interface noParameterReturn{
	int call();
}
interface ParameterReturn{
	int call(int a, int b);
}
