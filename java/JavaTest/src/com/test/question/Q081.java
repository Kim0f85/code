package com.test.question;

import java.util.Scanner;

public class Q081 {
	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		System.out.print("이메일: ");
		String email = scan.nextLine();
		
		int position1 = email.indexOf("@");
		
		String id = email.substring(0,position1);
		String domain = email.substring(position1+1,email.length());
		
		System.out.printf("아이디: %s\n도메인: %s",id,domain);
		
	}
}
