package com.test.question;

import java.util.Arrays;

public class Q073 {
	public static void main(String[] args) {
		int [][]nums = new int[5][5];
		int num = 0;
		for (int i = 0; i<5;i++) {
			int j =0;
			for(j = 0; j<5-i;j++) {
				nums[i][j]=++num;
				System.out.printf("%2d ",nums[i][j]);
			}
			for(int k = 0; k<5-(5-i);k++) {
				//nums[i][j]=0;
				
				System.out.printf("%2d ",nums[i][j]);
				j++;
			}
			System.out.println();
		}
		
	}
}
