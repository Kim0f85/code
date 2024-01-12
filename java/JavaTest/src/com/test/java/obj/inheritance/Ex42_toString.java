package com.test.java.obj.inheritance;

import java.util.Date;

import com.test.java.obj.Monitor;

import java.util.Calendar;

public class Ex42_toString {
	public static void main(String[] args) {
		
		//Ex42_toString.java
		
		//OBject.toString()오버라이딩
		//- 국민 오버라이딩 
		
		Monitor m1 = new Monitor();
		
		m1.setModel("LG100");
		m1.setPrice(500000);
		
		//방금 만즌 객체의 상태가 궁금? > 출력을 통해서 상태를 확인
		System.out.println(m1.getModel());
		System.out.println(m1.getSize());
		System.out.println(m1.getLevel());// 귀찮음 ;;;; 상태마다 따로 확인
		
		//객체의 상태를 일괄적으로 확인 > info() 메서드를 사람들이 잘 모름...
		//info()와 기능적 차이 없음 
		//유명세 
		System.out.println(m1);
		
		Time t1  = new Time(2, 30);
		
		Time t2 = new Time(3, 50);
		
		System.out.println(t1.info());
		System.out.println(t2.info());
		System.out.println(t1.toString()); //t1.toString();
		System.out.println(t2); //t2.toString();
		
		
		Date now1 = new Date();
		Calendar now2 = Calendar.getInstance();
		
		System.out.println(now1);
		System.out.println(now1.toString());
		
		System.out.println(now2);
		System.out.println(now2.toString());
		
	}//main
}

class Time {
	private int hour;
	private int minute;
	
	public Time(int hour, int minute) {
		this.hour = hour;
		this.minute = minute;
	}
	
	public String info() {
		return this.hour + ":" + this.minute;
	}
	
	
	//메서드 오버라이딩
	@Override // Annotation > 일종의 주석 
	public String toString() {
		// toString() > 일반적으로 객체의 상태를 문자열로 반환하는 역할 
		// 						(현재 객체가 가지는 시,분)
		return this.hour + ":" + this.minute;
	} 
	
	
	
	
	
}




