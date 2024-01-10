package com.test.question;

public class Q057 {
	public static void main(String[] args) {
		
		//int count = 0; 

		for (int i = 0; i <= 100; i+=10) {
			int count = 0; 
			int num1 = 0;
			for (int j = 1; j<=i;j++) {
				count += j;
				if (i==j) {
					System.out.printf("1 ~ %3d: %4d\n",j,count);
				}
			}
		}
	}
}
