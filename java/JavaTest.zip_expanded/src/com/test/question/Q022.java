package com.test.question;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Calendar;

public class Q022 {
	public static void main(String[] args) throws IOException {
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.print("남자 이름: ");
		String maleName = reader.readLine();
		System.out.print("여자 이름: ");
		String femaleName = reader.readLine();
		
		System.out.print("만난날(년): ");
		int year = Integer.parseInt(reader.readLine());
		System.out.print("만난날(월): ");
		int month = Integer.parseInt(reader.readLine());
		System.out.print("만난날(일): ");
		int day = Integer.parseInt(reader.readLine());
		
		Calendar c1 = Calendar.getInstance();
		
		//만난날 설정 
		c1.set(year, month-1, day);
		
		HundredDay(c1);
		TwoHundred(c1);
		ThreeHundred(c1);
		FiveHundred(c1);
		Thousand(c1);
	
	}

	private static void Thousand(Calendar c1) {
		c1.add(Calendar.DATE, 500);
		System.out.printf("1000일차: %tF\n", c1);
		
	}

	private static void FiveHundred(Calendar c1) {
		c1.add(Calendar.DATE, 200);
		System.out.printf("500일차: %tF\n", c1);
		
	}

	private static void ThreeHundred(Calendar c1) {
		c1.add(Calendar.DATE, 100);
		System.out.printf("300일차: %tF\n", c1);
		
	}

	private static void TwoHundred(Calendar c1) {
		c1.add(Calendar.DATE, 100);
		System.out.printf("200일차: %tF\n", c1);
		
	}

	private static void HundredDay(Calendar c1) {
		c1.add(Calendar.DATE, 100);
		System.out.printf("100일차: %tF\n", c1);
	}
}
