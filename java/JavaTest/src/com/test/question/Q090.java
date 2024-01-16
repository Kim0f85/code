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
			case '1': addition=1; break;
			case '2': addition=2; break;
			case '3': addition=3; break;
			case '4': addition=4; break;
			case '5': addition=5; break;
			case '6': addition=6; break;
			case '7': addition=7; break;
			case '8': addition=8; break;
			case '9': addition=9; break;
			default : addition=0; break;
			}
			System.out.println(result);
			result+=addition;
			//System.out.println(input.charAt(i));
			
		}
		System.out.printf("문장에 존재하는 모든 숫자의 합은 %d입니다.",result);
	}
}
