package com.test.question;

import java.util.Arrays;

public class Q072 {
	public static void main(String[] args) {
		int [][]nums = new int[5][5];
		int num = 0;
		for (int i = 0; i<5;i++) {
			num = i+1;
			for(int j = 0; j<5;j++) {
				nums[i][j]=num;
				num+=5;
				System.out.printf("%2d ",nums[i][j]);
			}
			System.out.println();
		}
		
	}
}
