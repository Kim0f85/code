package com.test.question;

import java.util.Scanner;

public class Q090 {
	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		System.out.print("입력: ");
		String input = scan.nextLine();
		int result = 0;
		int addition = 0;
		
		
		for(int i = 0; i<input.length() ; i++) {
			switch(input.charAt(i)) {
			case '1': result=1; break;
			case '2': result=2; break;
			case '3': result=3; break;
			case '4': result=4; break;
			case '5': result=5; break;
			case '6': result=6; break;
			case '7': result=7; break;
			case '8': result=8; break;
			case '9': result=9; break;
			}
			result+=result;
			System.out.println(result);
			
		}
		System.out.printf("문장에 존재하는 모든 숫자의 합은 %d입니다.",result);
	}
}
