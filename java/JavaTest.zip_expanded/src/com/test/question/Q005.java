package com.test.question;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.Math;


public class Q005 {
	public static void main(String[] args) throws NumberFormatException, IOException {
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.print("사용자가 페달을 밟은 횟수: ");
		int pedal = Integer.parseInt(reader.readLine());
		
		double circ = Math.PI * (26*2.54D)/100;
		
		double dis = pedal * circ;
		
		System.out.printf("사용자가 총 %,d회 페달을 밟아 자전거가 총 %,.2fm를 달렸습니다.",pedal,dis);
	}
}