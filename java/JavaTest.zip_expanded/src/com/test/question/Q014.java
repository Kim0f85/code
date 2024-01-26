package com.test.question;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q014 {
	public static void main(String[] args) throws NumberFormatException, IOException {
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.print("역의 개수: ");
		int numStation = Integer.parseInt(reader.readLine());
		System.out.print("환승역의 횟수: ");
		int numTrans = Integer.parseInt(reader.readLine());
		System.out.print("시간대(1.평상시, 2.출근시, 3.퇴근시): ");
		int numtime = Integer.parseInt(reader.readLine());
		
		
		
		System.out.printf("총 소요 시간은 %d분입니다.",(2*numStation)+transTime(numtime, numTrans));
		
	}// main
	
	public static int transTime(int numtime, int numtrans) {
		int busytime = (numtime == 1)? 3 : (numtime == 2)? 4 : 5;
		
		int transTime = busytime * numtrans;
		
		return transTime;
	}
	
}
