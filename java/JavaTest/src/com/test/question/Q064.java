package com.test.question;

import java.util.Arrays;

public class Q064 {
	public static void main(String[] args) {
		
		
		int[] input = new int[20];
		System.out.print("원본: ");
		for(int i = 0; i<input.length;i++) {
			int random = (int) ((Math.random()*20)+1);
			input[i] = random;
			System.out.printf("%d,",input[i]);
			//System.out.println(input[i]);
		}
		System.out.println();
		
		Arrays.sort(input);
		
		System.out.printf("최댓값: %d\n",input[input.length-1]);
		
		System.out.printf("최솟값: %d",input[0]);
		
	}
}