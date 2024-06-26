package com.test.question;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

import javax.naming.spi.DirStateFactory.Result;

public class Q011 {
	public static void main(String[] args) throws NumberFormatException, IOException {
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.print("첫번째 숫자: ");
		int n1 = Integer.parseInt(reader.readLine());
		
		System.out.print("두번째 숫자: ");
		int n2 = Integer.parseInt(reader.readLine());
		
		String result; 
		
		result = add(n1, n2); 
		System.out.println(result);

		result = subtract(n1, n2);
		System.out.println(result);

		result = multiply(n1, n2);
		System.out.println(result);

		result = divide(n1, n2);
		System.out.println(result);

		result = mod(n1, n2);
		System.out.println(result);
	}

	private static String mod(int n1, int n2) {
		int result = n1 % n2;
		String txt = String.format("%d %% %d = %f",n1,n2,(double)n1%(double)n2);
		return txt;
	}

	private static String divide(int n1, int n2) {
		double result = (double)n1/(double)n2;
		String txt = String.format("%d / %d = %.1f",n1,n2,(double)n1/(double)n2);
		return txt;
	}

	private static String multiply(int n1, int n2) {
		int result = n1 * n1;
		String txt = String.format("%d * %d = %d",n1,n2,n1*n2);
		return txt;
	}
	private static String subtract(int n1, int n2) {
		int result = n1 - n1;
		String txt = String.format("%d - %d = %d",n1,n2,n1-n2);
		return txt;
	}
	private static String add(int n1, int n2) {
		int result = n1 + n1;
		String txt = String.format("%d + %d = %d",n1,n2,n1+n2);
		return txt;
	}
}
