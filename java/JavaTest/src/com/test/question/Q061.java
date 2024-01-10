package com.test.question;

import java.util.Arrays;
import java.util.Scanner;

public class Q061 {
	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		
		int[]nums = new int[5];
		
		for(int i = 0; i<5;i++) {
			System.out.print("숫자: ");
			nums[i] = scan.nextInt();
		}
		
		for(int j = 4; j>=0;j--) {
			System.out.printf("nums[%d] = %d\n",j,nums[j]);
		}
		
	}
}
