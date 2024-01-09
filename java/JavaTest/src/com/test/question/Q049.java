package com.test.question;

import java.util.Scanner;

public class Q049 {
	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		System.out.print("행: ");
		String space = " ";
		String stars = "*";
		String result = "";
		int row = scan.nextInt();
		for (int i = 0; i < row; i++) {
			result = "";
			for (int j = 0;j<i;j++) {
				
				result = result + space;
			}
			for (int j = 0; j < row - i; j++) {
				//System.out.print(stars);
				result = result + stars;
			}
			System.out.printf("%s",result);
			System.out.println();
			
		}
	};

}
