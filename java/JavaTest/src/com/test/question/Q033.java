package com.test.question;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

import javax.naming.spi.DirStateFactory.Result;

public class Q033 {
	public static void main(String[] args) throws NumberFormatException, IOException {
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		System.out.print("년도 입력: ");
		int year = Integer.parseInt(reader.readLine());
		
		String result = checker1(year);
		
		System.out.printf("%d년은 '%s'입니다.",year,result);
		
		
	}

	private static String checker1(int year) {
		String result = "";
		
		if (year%4==0) {
			if (year%100==0) {
				if(year%400==0) {
					result = "윤년";
				}else {
					result = "평년";
				}
			}else {
				result = "윤년";
			}
		}else {
			result = "평년";
		}
		
		return result;
		
			
			
					
		
		
		
	}

	
}
