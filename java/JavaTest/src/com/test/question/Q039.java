package com.test.question;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q039 {
	public static void main(String[] args) throws NumberFormatException, IOException {
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		System.out.print("시작 숫자: ");
		int start = Integer.parseInt(reader.readLine());
		System.out.print("종료 숫자: ");
		int end = Integer.parseInt(reader.readLine());
		int sum = 0;
		mathwrite(start,end);
	}

	private static void mathwrite(int start, int end) {
		int sum = 0;
		for(int i = start; i <=end;i++) {
			System.out.println(i+"+");
			sum+=i;																													
		}
		System.out.println("\b\b="+sum);
		
	}
}
