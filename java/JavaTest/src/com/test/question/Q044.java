package com.test.question;

import java.util.Scanner;

public class Q044 {
	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		String s1 = "";
		int result = 0;
		do {
			System.out.print("숫자: ");
			int input = scan.nextInt();
			if (input%2==0) {
				result+=input;
				s1 = s1 +"+" +input;
			}else {
				result-=input;
				s1 = s1 +"-" +input;
			}
		}while(result<=100);
		System.out.println(result);
		System.out.println(s1+"="+result);
		
	}

	
		
	
}
