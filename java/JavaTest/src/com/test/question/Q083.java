package com.test.question;

import java.util.Scanner;

public class Q083 {
	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		int mp3 = 0;
		int jpg = 0;
		int java = 0;
		int hwp = 0;
		int doc = 0;
		for(int i = 0 ; i<10;i++) {
			System.out.print("파일명: ");
			String input = scan.nextLine();
			if(input.contains(".mp3")) {
				mp3++;
			}else if(input.contains(".jpg")) {
				jpg++;
			}else if(input.contains(".java")) {
				java++;
			}else if(input.contains(".hwp")) {
				hwp++;
			}else if(input.contains(".doc")) {
				doc++;
			}
		}
		
		System.out.printf("mp3: %d\njpg: %d\njava: %d\nhwp: %\ndoc: %d",mp3,jpg,java,hwp,doc);
	}
}
