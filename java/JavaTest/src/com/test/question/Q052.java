package com.test.question;

import java.util.Scanner;

public class Q052 {
	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		System.out.print("행: ");
		String space = " ";
		String stars = "*";
		String result = "";
		int row = scan.nextInt();
		for (int i = 2; i < row+2; i++) {
			result = "";
			for (int j = 0; j < row+2-i ; j++) {

				result = result + space;
			}
			for (int j = 2; j < i*2; j++) {
				// System.out.print(stars);
				result = result + stars;
			}
			
			System.out.printf("%3s", result);
			System.out.println();

		}
	}

}
