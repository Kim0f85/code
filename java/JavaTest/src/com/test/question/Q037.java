package com.test.question;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q037 {
	public static void main(String[] args) throws NumberFormatException, IOException {
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		System.out.print("숫자: ");
		int num = Integer.parseInt(reader.readLine());
		
		
		addition(num);
	}

	private static void addition(int num) {
		int result = 0;
		for (int i = 1; i<=num;i++) {
			result += i;
		}
		
		System.out.printf("1 ~ %d = %d",num,result);
	}
}
