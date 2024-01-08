package com.test.question;

import java.util.Calendar;

public class Q019 {
	public static void main(String[] args) {
		nowTime();
	}

	private static void nowTime() {
		
		Calendar c1 = Calendar.getInstance(); 
		
		System.out.printf("현재 시간 : %02d시 %02d분 %02d초\n"
									,c1.get(Calendar.HOUR_OF_DAY)
									,c1.get(Calendar.MINUTE)
									,c1.get(Calendar.SECOND));
		
		System.out.printf("현재 시간 : %s %02d시 %02d분 %02d초\n"
				,c1.get(Calendar.AM_PM)==0?"오전":"오후"
				,c1.get(Calendar.HOUR)
				,c1.get(Calendar.MINUTE)
				,c1.get(Calendar.SECOND));
		
		
		
	}
}
