package com.test.question;

import java.util.Arrays;
import java.util.Scanner;

public class Q066 {
	public static void main(String[] args) {
		
		int[] input = new int[6];
		for (int i = 0; i < input.length; i++) {
			int random = (int) ((Math.random() * (45)) + 1);
			input[i] = random;

			for (int j = 0; j < i; j++) {
				if (input[i] == input[j]) {
					i--;
					break;
				}
			}

		}
		Arrays.sort(input);
		System.out.println(Arrays.toString(input));
//		
	}

}
