package com.test.question;

import java.util.Scanner;

public class Q089 {
	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		System.out.print("금액(원): ");
		String input = scan.nextLine();
		String result = "";
		System.out.print("일금 ");
		
		for(int i = 0; i<input.length() ; i++) {
			
			switch(input.charAt(i)) {
			case '1': result="일"; break;
			case '2': result="이"; break;
			case '3': result="삼"; break;
			case '4': result="사"; break;
			case '5': result="오"; break;
			case '6': result="육"; break;
			case '7': result="칠"; break;
			case '8': result="팔"; break;
			case '9': result="구"; break;
			}
			System.out.print(result);
			
		}
		
	}
}
