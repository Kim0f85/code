package com.test.question;

public class Q058 {
	public static void main(String[] args) {
		int num1 = 0;
		for (int i = 0; i <= 100; i += 10) {
			int count = 0;
			if (i > 0) {
				for (int j = i - 9; j <= i; j++) {
					count += j;
					if (i == j) {
						System.out.printf("%2d ~ %3d: %3d\n", i-9, j, count);
					}
				}
			}
		}
	}
}
