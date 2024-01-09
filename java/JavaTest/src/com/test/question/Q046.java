package com.test.question;

import java.util.Scanner;

import javax.naming.spi.DirStateFactory.Result;

public class Q046 {
	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		int input = 0;
		String result = "";
		for (int i = 0; i < 10; i++) {
			System.out.print("숫자: ");
			input = scan.nextInt();
			result = result +interchg(input);
		}
		
		System.out.println(result);

	}

	private static String interchg(int input) {
		
		String output = "";
		switch (input) {
			case 1:
				output = "일";
				break;
			case 2:
				output = "이";
				break;
			case 3:
				output = "삼";
				break;
			case 4:
				output = "사";
				break;
			case 5:
				output = "오";
				break;
			case 6:
				output = "육";
				break;
			case 7:
				output = "칠";
				break;
			case 8:
				output = "팔";
				break;
			case 9:
				output = "구";
				break;
				
		}
		return output;
	}
}
