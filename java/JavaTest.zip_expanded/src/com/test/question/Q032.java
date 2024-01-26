package com.test.question;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Calendar;
import java.util.Set;

import javax.naming.spi.ObjectFactory;

public class Q032 {
	public static void main(String[] args) throws NumberFormatException, IOException {
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.println("[들어온 시간]");
		System.out.print("시: ");
		int hour1 = Integer.parseInt(reader.readLine());
		System.out.print("분: ");
		int min1 = Integer.parseInt(reader.readLine());
		
		System.out.println("[나간 시간]");
		System.out.print("시: ");
		int hour2 = Integer.parseInt(reader.readLine());
		System.out.print("분: ");
		int min2 = Integer.parseInt(reader.readLine());
		
		Calendar c1 = Calendar.getInstance();
		Calendar c2 = Calendar.getInstance();
		
		c1.set(2024, 01, 01, hour1, min1);
		c2.set(2024, 01, 01, hour2, min2);
		
		long gap = c2.getTimeInMillis()-c1.getTimeInMillis();
		long time = (gap/1000/60)-30;
		
		
		
		if (time >0) {
			int price = (int)((time / 10)	*	2000);	

			System.out.printf("주차 요금은 %,d원입니다.", price);	
		}
			
	}
}
