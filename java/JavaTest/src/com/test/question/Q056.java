package com.test.question;

import java.util.Scanner;

import javax.swing.plaf.multi.MultiInternalFrameUI;

public class Q056 {
	public static void main(String[] args) {
		//1. enter 2 number
		//2. 
		
		
		
		Scanner scan = new Scanner(System.in);
		System.out.print("첫번째 숫자: ");
		int num1 = scan.nextInt();
		System.out.print("두번째 숫자: ");
		int num2 = scan.nextInt();
		String save1 ="";
		String save2 ="";
		String save3 ="";
		int none = 0;
		
		for (int j = 1; j < 100; j++) {
			none=0;
			if (num1 % j == 0 && none <= num1) {
				save1 += j + ",";
				none += j;
			}
		}
		System.out.printf("%d의 약수: %s\n",num1,save1);
		
		for (int i = 1; i < 100; i++) {
			none=0;
			if (num2 % i == 0 && none <=num2) {
				save2 += i + ",";
				none += i;
			}
		}
		System.out.printf("%d약수: %s\n",num2,save2);
		
		for (int k = 1;k < 100; k++) {
			none = 0;
			if (num1 % k == 0 && none <= num1 && num2 % k == 0 && none <=num2) {
				save3 += k + ",";
				none+=k;
			}
		}
		System.out.printf("%d와 %d의 공약수: %s",num1,num2,save3);
		
	}
}
