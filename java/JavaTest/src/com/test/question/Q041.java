package com.test.question;

public class Q041 {
	public static void main(String[] args) {
		int result = 0;
		int sum = 0;
		while(sum <=1000) {
			result++;
			sum+=result;
			System.out.printf("%d + ",result);
		}
		System.out.println("\b\b="+sum);
	}
}
