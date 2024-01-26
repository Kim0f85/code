package com.test.question;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Calendar;

public class Q024 {
	public static void main(String[] args) throws NumberFormatException, IOException {
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		System.out.println("음식을 받기 원하는 시각");
		System.out.print("시: ");
		int hour = Integer.parseInt(reader.readLine());
		System.out.print("분: ");
		int min = Integer.parseInt(reader.readLine());
		
		
		food1(hour, min);
		food2(hour, min);
		food3(hour, min);
	}

	private static void food1(int hour, int min) {
		int food1hour = hour;
		int food1min = min;
		
		food1min -= 10;
		
		food1hour = ((food1min<0)?food1hour-1:food1hour);
		food1min = (food1min%60<0)?60+food1min:food1min;
		
		System.out.printf("짜장면: %d시간 %d분\n",food1hour,food1min);
		
	}
	private static void food2(int hour, int min) {
		int food2hour = hour;
		int food2min = min;
		
		food2min -= 18;
		
		food2hour = ((food2min<0)?food2hour-1:food2hour);
		food2min = (food2min%60<0)?60+food2min:food2min;
		
		System.out.printf("짜장면: %d시간 %d분\n",food2hour,food2min);
		
	}
	private static void food3(int hour, int min) {
		int food3hour = hour;
		int food3min = min;
		
		food3min -= 25;
		
		food3hour = ((food3min<0)?food3hour-1:food3hour);
		food3min = (food3min%60<0)?60+food3min:food3min;
		
		System.out.printf("짜장면: %d시간 %d분\n",food3hour,food3min);
		
	}
}
