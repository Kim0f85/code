package com.test.question;

import java.util.Scanner;

public class Q080 {
	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		
		System.out.print("문장 입력: ");
		String input = scan.nextLine();
		System.out.print("역순 결과: ");
		for(int i = 0 ;i<input.length();i++) {
			System.out.print(input.substring(input.length()-i-1,input.length()-i));
		}
	}
}
