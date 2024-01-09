package com.test.question;

import java.util.Scanner;

public class Q051 {
	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		System.out.print("행: ");
		String space = " ";
		String stars = "*";
		String result = "";
		int row = scan.nextInt();
		for (int i = 1; i < row; i++) {
			result = "";
			for (int j = 0; j < row-i ; j++) {

				result = result + space;
			}
			for (int j = 1; j < i*2; j++) {
				// System.out.print(stars);
				result = result + stars;
			}
			for (int j = 0; j < row-i ; j++) {

				result = result + space;
			}
			System.out.printf("%s", result);
			System.out.println();

		}
	}

}
