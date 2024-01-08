package com.test.question;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q012 {
	public static void main(String[] args) throws NumberFormatException, IOException {
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.print("입력: ");
		int n = Integer.parseInt(reader.readLine());
		
		String result; 
		
		result = getNumber(n); 
		System.out.printf("입력하신 숫자 '%d'는(은) '%s'입니다.\n", n, result);
	}//Main 
	
	public static String getNumber(int n) {
		String result = (n%2==2)?"짝수":"홀수";
		
		return result;
	}
}
