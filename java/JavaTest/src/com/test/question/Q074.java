package com.test.question;

import java.util.Arrays;

public class Q074 {
	public static void main(String[] args) {
		int [][]nums = new int[5][5];
		int num = 0;
		for (int i = 0; i<3;i++) {
			int j =0;
			int k =0;
			int count= 0;
			if (i<2) {
				for(k = 0 ; k<i+2;) {
					nums[i][k]=0;
					System.out.printf("%2d ",nums[i][j]);
					k--;
				}
			}
			for(j = k; j<5;j++) {
				nums[i][j]=++num;
				System.out.printf("%2d ",nums[i][j]);
			}
				
			System.out.println();	
				//nums[i][j]=++num;
				//System.out.printf("%2d ",nums[i][j]);
			}
			
		}
		
	}

