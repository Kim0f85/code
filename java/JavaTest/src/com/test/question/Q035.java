package com.test.question;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

import javax.naming.spi.DirStateFactory.Result;

public class Q035 {
	public static void main(String[] args) throws NumberFormatException, IOException {
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		System.out.print("이름: ");
		String name = reader.readLine();
		System.out.print("횟수: ");
		int num = Integer.parseInt(reader.readLine());
		
		Result(name,num);
	}

	private static void Result(String name, int num) {
		for (int i = 0; i<num;i++) {
			System.out.printf("%s님 안녕하세요~\n",name);
		}
		
	}
}
