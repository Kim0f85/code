package com.test.java.obj;

public class Ex31_Access {
	public static void main(String[] args) {
		//Ex34_Access.java 
		Monitor m1 = new Monitor();
		
		//자바에서 ....
		//public 변수 > field(필드)
		//Getter+Setter > Property(프로퍼티)
		
		m1.setModel("TG100");//쓰기 
		System.out.println(m1.getModel());//읽기
		
		//m1.setSize("100"); // 없음
		System.out.println(m1.getSize()); //읽기
		
		m1.setPrice(200000);
		
		//가상 프로퍼티 or 계산된 프로퍼티 
		System.out.println(m1.getLevel());
	}
}
