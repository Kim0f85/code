package com.test.question;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.time.Year;
import java.util.Calendar;

public class Q021 {
	public static void main(String[] args) throws NumberFormatException, IOException {
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.print("태어난 년도: ");
		int DOB = Integer.parseInt(reader.readLine());
		
		Calendar birthYear = Calendar.getInstance();
		Calendar now = Calendar.getInstance();
		
		birthYear.set(Calendar.YEAR, DOB);
		long age = now.getTimeInMillis()-birthYear.getTimeInMillis();
		
		System.out.printf("나이: %d세", age/1000/60/60/24/365+1);
		
		
	}
}
