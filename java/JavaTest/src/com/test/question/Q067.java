package com.test.question;

import java.util.Arrays;
import java.util.Scanner;

public class Q067 {
	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		System.out.print("삽입 위치: ");
		int location = scan.nextInt();
		System.out.print("값: ");
		int value = scan.nextInt();
		int index = 1;
		
		int [] series = {5,6,1,3,2,0,0,0,0,0};
		
		for (int i = series.length-2; i >=location; i--) {
			series[i+1] = series[i];
			//System.out.println(Arrays.toString(series));
		}
		series[location]=value;
		System.out.println(Arrays.toString(series));
		
	}
}
