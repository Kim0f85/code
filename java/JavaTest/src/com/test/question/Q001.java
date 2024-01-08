package com.test.question;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q001 {
	public static void main(String[] args) throws IOException {
		
		//문제 1. 
		//요구]태어난 년도를 입력받아 나이를 출력하시오.
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		
		System.out.print("태어난 년도: ");
		int DOB = Integer.parseInt(reader.readLine());
		System.out.printf("나이: %d",(2024-DOB));
	}
}
