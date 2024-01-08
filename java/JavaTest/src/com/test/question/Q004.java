package com.test.question;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q004 {
	public static void main(String[] args) throws NumberFormatException, IOException {
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.print("섭씨(℃): ");
		double deg = Double.parseDouble(reader.readLine());
		
		double fdeg = deg * 1.8 + 32;
		System.out.printf("섭씨 %.1f℃는 화씨 %,.1f℉입니다.",deg,fdeg);
	}
}
