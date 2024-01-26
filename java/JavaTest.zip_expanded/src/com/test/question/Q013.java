package com.test.question;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q013 {
	public static void main(String[] args) throws NumberFormatException, IOException {
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		System.out.println("국어: ");
		int kor = Integer.parseInt(reader.readLine());
		
		System.out.println("영어: ");
		int eng = Integer.parseInt(reader.readLine());
		
		System.out.println("수학: ");
		int math = Integer.parseInt(reader.readLine());
		
		System.out.println(ScoreChecker(kor, eng, math));
		
	}

	private static String ScoreChecker(int kor, int eng, int math) {
		int avg = (kor+eng+math)/3;
		
		String ScoPas = (avg>=60 && kor >=40 && eng>=40 && math>=40)?"합격":"불합격";
		
		return ScoPas;
	}
}
