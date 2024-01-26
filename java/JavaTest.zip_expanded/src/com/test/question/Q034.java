package com.test.question;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Calendar;
import java.util.Set;

public class Q034 {
	public static void main(String[] args) throws NumberFormatException, IOException {
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.print("년: ");
		int year = Integer.parseInt(reader.readLine());
		System.out.print("월: ");
		int month = Integer.parseInt(reader.readLine());
		System.out.print("일: ");
		int day = Integer.parseInt(reader.readLine());
		
		String result = "";
		int newday = 0;
		
		Calendar now = Calendar.getInstance();
		now.set(year, month-1, day);
		int compare = now.get(Calendar.DAY_OF_WEEK);
		
	
		
		if (compare >1 & compare<7) {
			result = "평일";
			
			newday = (7-compare)+day;
			
		}else {
			result = "휴일(토/일)입니다";
		}
		
		now.set(year, month-1,newday);
		
		System.out.printf("입력하신 날짜는 '%s'입니다.\n",result);
		if (result.equals("평일")) {
			System.out.println("해당 주의 토요일로 이동합니다.");
			System.out.printf("이동한 날짜는 '%tF' 입니다.",now);
		}else {
			System.out.println("결과가 없습니다.");
		}
		
		
		
		
	}
}
