package com.test.question;

import java.util.Scanner;

public class Q086 {
	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		System.out.print("숫자: ");
		String input = scan.nextLine();
		String result = "";
		
		for(int i = 0 ;i<input.length();i++) {
			if(i%3==0&&i>0) {
				result+=(input.substring(input.length()-i-1,input.length()-i-1)+",");
			}
			result+=(input.substring(input.length()-i-1,input.length()-i));
		}
		
		for(int i = 0;i<result.length();i++) {
			System.out.print(result.substring(result.length()-i-1,result.length()-i));
		}
//	
		
	}
}
