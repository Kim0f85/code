package com.test.question;

import java.util.Scanner;

import javax.naming.spi.DirStateFactory.Result;

public class Q082 {
	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		System.out.println("숫자: ");

		String input = scan.nextLine();
		int result = 0;
		System.out.print("결과: ");

		for (int i = 0; i < input.length(); i++) {
			if (i == input.length() - 1) {
				System.out.printf("%s=", input.substring(i, i + 1));
			} else {
				System.out.printf("%s+", input.substring(i, i + 1));
			}
			result += Integer.parseInt(input.substring(i, i + 1));
		}

		System.out.print(result);

	}
}
