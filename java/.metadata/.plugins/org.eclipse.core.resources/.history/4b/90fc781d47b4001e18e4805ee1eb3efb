package com.test.question;

import java.util.Scanner;

public class Q088 {
	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		System.out.print("입력: ");
		String input = scan.nextLine();
		String result = "";
		boolean check = false;
		int count = 0;
		
		do {
			if(input.contains("바보")||input.contains("멍청이")) {
				input = input.replace("바보", "**");
				count++;
				input = input.replace("멍청이", "***");
				count++;
			}else {
				check=true;
			}
		}while(check = false);
		
		System.out.println(input);
		System.out.printf("금지어를 %d회 마스킹했습니다.",count);
		
	}
	
}
