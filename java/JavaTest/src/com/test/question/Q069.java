package com.test.question;

import java.util.Arrays;
import java.util.Scanner;

public class Q069 {
	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		System.out.print("배열 길이: ");
		int arrlen = scan.nextInt();

		int[] nums = new int[arrlen];

		for (int i = 0; i < arrlen; i++) {
			int rand = (int) ((Math.random() * 9) + 1);
			nums[i] = rand;
		}


		int[] numsChg = new int[arrlen];
		if(arrlen%2==0) {
			for (int i = 0; i < numsChg.length; i++) {
				numsChg[i] = nums[i] + nums[i+ 1];
				i++;
			}
		}else {
			for (int i = 0; i < numsChg.length-1; i+=2) {
				numsChg[i] = nums[i] + nums[i+ 1];
				
			}
		}
		
		
		if (arrlen % 2 == 0) {
			arrlen = arrlen / 2;
			numsChg = new int[arrlen];
			for(int i =0;i<numsChg.length;i++) {
				numsChg[i] = nums[i*2] + nums[(i*2)+1];
			}
		} else {
			arrlen = (int)(arrlen / 2) + 1;
			numsChg = new int[arrlen];
			for(int i =0;i<numsChg.length-1;i++) {
				numsChg[i] = nums[i*2] + nums[(i*2)+1];

			}
			numsChg[numsChg.length - 1] = nums[nums.length - 1];
		}
		
	

		

		System.out.printf("원본: %s\n",Arrays.toString(nums));
		System.out.printf("결과: %s\n",Arrays.toString(numsChg));
	}
}
