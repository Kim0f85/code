package com.test.question;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q030 {
	public static void main(String[] args) throws IOException {
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		System.out.print("문자: ");
		char input = (char)System.in.read();
		
		int chg = 0;
		
		
		if ((input >= 'a'&&input<='z')||(input>='A'&&input<='Z')) {
			
			if (input >= 'a'&&input<='z') {
				chg = (int)input -32;
				System.out.printf("'%c'의 대문자는 '%c'입니다.",input,chg);
				
			}else {
				chg = (int)input +32;
				System.out.printf("'%c'의 대문자는 '%c'입니다.",input,chg);
			}
			
		} else {
			System.out.println("영문자만 입력하시오.");
		}
	}
}
