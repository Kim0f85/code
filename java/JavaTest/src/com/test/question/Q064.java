package com.test.question;

import java.util.Arrays;

public class Q064 {
	public static void main(String[] args) {
		
		
		int[] input = new int[20];
		
		for(int i = 0; i<input.length;i++) {
			int random = (int) ((Math.random()*(20-1))+1);
			input[i] = random;
			//System.out.println(input[i]);
		}
		Arrays.sort(input);
		System.out.printf("최댓값: %d\n",input[input.length-1]);
		
		System.out.printf("최솟값: %d",input[0]);
		
	}
}
