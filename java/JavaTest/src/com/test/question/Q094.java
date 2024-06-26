package com.test.question;

import java.util.Calendar;

import javax.xml.crypto.dsig.spec.C14NMethodParameterSpec;

public class Q094 {
	public static void main(String[] args) {
		Bugles snack = new Bugles();

		snack.setSize(500);
		snack.setCreationTime("2024-01-10");
		System.out.println("가격 : " + snack.getPrice() + "원");
		System.out.println("유통 기한이 " + snack.getExpiration() + "일 남았습니다.");

		snack.eat();


		Bugles snack2 = new Bugles();

		snack2.setSize(300);
		snack2.setCreationTime("2024-01-02");
		System.out.println("가격 : " + snack2.getPrice() + "원");
		System.out.println("유통 기한이 " + snack2.getExpiration() + "일 남았습니다.");

		snack2.eat();
	}
}

class Bugles {
	private int price;
	private int weight;
	private Calendar creationTime;
	private int expiration;

	// getter, setter 구현

	public int getPrice() {
		switch(weight) {
		case 300:
			this.price = 850;
			break;
		case 500:
			this.price = 1200;
			break;
		case 850:
			this.price = 1950;
			break;		
		}
		return this.price;
	}

	public void setSize(int weight) {
		if (weight ==300 || weight == 850||weight ==500) {
			this.weight = weight;
		}else {
			System.out.println("wrong input");
		}
	}

	public void setCreationTime(String creationTime) {
		Calendar c1 = Calendar.getInstance();
		int year = Integer.parseInt(creationTime.substring(0, 4));
		int month = Integer.parseInt(creationTime.substring(5,7))-1;
		int day = Integer.parseInt(creationTime.substring(8,10));
		
		c1.set(year,month,day);
		
		this.creationTime = c1;
	}

	public int getExpiration() {
		
		
		int duration = 0;
		switch(weight) {
		case 300:
			duration=7;
			break;
		case 500:
			duration=10;
			break;
		case 850:
			duration=15;
			break;
		}
		Calendar now = Calendar.getInstance();
		
		this.expiration=duration-(int)(now.getTimeInMillis()-creationTime.getTimeInMillis())/1000/60/60/24;
		
		return expiration;
	}

	public void eat() {
		if (this.expiration>0) {
			System.out.println("과자를 맛있게 먹습니다.");
		}else {
			System.out.println("유통기한이 지나 먹을 수 없습니다.");
		}
		
		
	}
}