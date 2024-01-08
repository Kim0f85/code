package com.test.question;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;


public class Q006 {
	public static void main(String[] args) throws NumberFormatException, IOException {
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.print("한달 수입 금액(원): ");
		int income = Integer.parseInt(reader.readLine());
		double rate = 0.033D;
		double aTaxInc = income * (1-rate);
		double tax = income * rate;
		
		System.out.printf("세후 금액(원): %,d원\n",(long)aTaxInc);
		System.out.printf("세금(원) : %,d원",(long)tax);
		
	}
}
