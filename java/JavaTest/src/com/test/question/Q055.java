package com.test.question;

public class Q055 {
	public static void main(String[] args) {

		int input = 100;
		int output = 0;
		String s1 = "";

		for (int i = 1; i <= input; i++) {
			output = 0;
			s1 = "";

			for (int j = 1; j < i; j++) {

				if (i % j == 0 && output <= i) {
					output += j;
					s1 = s1 + j + ",";
				}
			}
			if (output == i) {
				System.out.printf("%d = [%s]\n", output, s1);
			}
		}

	}

}
