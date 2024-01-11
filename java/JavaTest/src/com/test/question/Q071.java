package com.test.question;

import java.util.Arrays;

public class Q071 {
	public static void main(String[] args) {
		int [][]nums = new int[5][5];
		int num = 25;
		for (int i = 0; i<5;i++) {
			for(int j = 0; j<5;j++) {
				nums[i][j]=num--;
				System.out.printf("%2d ",nums[i][j]);
			}
			System.out.println();
		}
		
	}
}
