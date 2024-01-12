package com.test.question;

import java.io.InputStreamReader;
import java.util.Arrays;
import java.util.Scanner;

public class Q065 {
	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		System.out.print("최대 범위: ");
		int max = scan.nextInt();
		System.out.print("최소 범위: ");
		int min = scan.nextInt();
		
		int[] input = new int[20];
		String auto = "";
		String autorange = "";
		for (int i = 0; i < input.length; i++) {
			int random = (int) ((Math.random() * 20) + 1);
			input[i] = random;
			if (i==input.length-1) {
				auto += input[i];
				
				autorange += checker(input[i],max,min);
			}else {
				auto += input[i]+", ";
				autorange += checker(input[i],max,min);
			}


			 
		}
		System.out.printf("원본: %s\n",auto);
		//Arrays.sort(input);
		System.out.printf("결과: %s\n", autorange);

		
	}

	private static String checker(int i, int max, int min) {
		String result = "";
		if (i<=max && i>=min) {
			
			result = i+", ";
		}else {
			return result;
		}
		
		return result; 
	}
}
