package com.test.question;

import java.util.Scanner;

public class Q045 {
	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		int count = scan.nextInt();

		String checker = "";
		String result = "";
		int firstplace = 10;
		int secondplace = 100;
		int thirdplace = 1000;

		for (int i = 1; i <= count; i++) {
			if (i < 10) {
				if(tens(i, firstplace)==1) {
					result = result + "짝 ";
				} else {
					result = result + i +" ";
				}
			} else if (i < 100) {

			} else if (i < 1000) {

			}

		}
		System.out.print(result);

	}

	public static int thousands(int i, int thirdplace) {
		if ((i % thirdplace) / (int) 100 == 3 || (i % thirdplace) / (int) 100 == 6
				|| (i % thirdplace) / (int) 100 == 9) {
			return 1;
		} else {
			return 0;
		}
	}

	public static int hundreds(int i, int secondplace) {
		if ((i % secondplace) / (int) 10 == 3 || (i % secondplace) / (int) 10 == 6
				|| (i % secondplace) / (int) 10 == 9) {
			return 1;
		} else {
			return 0;
		}
	}

	public static int tens(int i, int firstplace) {
		if (i % firstplace == 3 || i % firstplace == 6 || i % firstplace == 9) {
			return 1;
		} else {
			return 0;
		}
	}

}