package com.test.question;

public class Q059 {
	public static void main(String[] args) {
		int result = 1;
		int addition = 0;
		int num1 = 0;

		for (int i = 0; i < 100; i++) {
			if (addition < 100) {
				addition = result += incre(i);
				if (addition < 100) {
					System.out.printf("%d + ", result);
				} else {
					break;
				}
			} else {
				break;
			}
			num1 += result;
		}
		System.out.printf("= %d", num1);
	}

	private static int incre(int i) {
		int make = 0;
		for (int j = 0; j < i; j++) {
			make++;
		}
		return make;
	}
}
