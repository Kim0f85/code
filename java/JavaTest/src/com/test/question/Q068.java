package com.test.question;

import java.util.Arrays;
import java.util.Scanner;

public class Q068 {
	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		
		System.out.print("삭제 위치: ");
		int location = scan.nextInt();
		
		int[] nums = { 5,6,1,3,2,0,0,0,0,0};
		int[] series = {5,6,1,3,2,8,7,4,10,9,0};
		
		System.out.printf("원본: %s\n",Arrays.toString(nums));
		for (int i = location; i <= nums.length - 2; i++) {
			nums[i] = nums[i + 1];
		}
		nums[nums.length - 1] = 0;

		System.out.printf("결과: %s\n",Arrays.toString(nums));
		
		System.out.print("삽입 위치: ");
		int location2 = scan.nextInt();
		System.out.printf("원본: %s\n",Arrays.toString(series));
		for (int i = series.length-2; i >=location2; i--) {
			series[i+1] = series[i];
			//System.out.println(Arrays.toString(series));
		}
		series[location2]=(int)((Math.random()*10)+1);
		System.out.printf("견과: %s",Arrays.toString(series));
	}
}
