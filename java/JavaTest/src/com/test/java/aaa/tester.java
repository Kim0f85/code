package com.test.java.aaa;

import java.util.Calendar;

public class tester {
	public static void main(String[] args) {
		Calendar c1 = Calendar.getInstance();
		
		c1.set(2023, 01, 31);
		
		System.out.printf("%tF", c1);
	}
}
