package com.test.question;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.reflect.Method;

public class Q036 {
	public static void main(String[] args) throws NumberFormatException, IOException {
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.print("시작 숫자: ");
		int start = Integer.parseInt(reader.readLine());
		System.out.print("종료 숫자: ");
		int end = Integer.parseInt(reader.readLine());
		System.out.print("증감치: ");
		int incre = Integer.parseInt(reader.readLine());
		
		m1(start,end,incre);
	}

	private static void m1(int start, int end, int incre) {
		for (int i = start;i<=end;i+=incre) {
			System.out.println(i);
		}
		
	}
}
