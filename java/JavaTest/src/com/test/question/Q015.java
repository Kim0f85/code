package com.test.question;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q015 {
	public static void main(String[] args) throws NumberFormatException, IOException {
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.print("맑은 날: ");
		int sunDay = Integer.parseInt(reader.readLine());
		System.out.print("흐린 날: ");
		int cloudDay = Integer.parseInt(reader.readLine());
		
		System.out.printf("사과가 총 %d개 열렸습니다.",getApple(sunDay, cloudDay));
	}

	private static int getApple(int sunDay, int cloudDay) {
		
		int numApple = (((sunDay*5) + (cloudDay*2))-100)/10;
		
		
		
		return numApple;
		
	}
}
