package com.test.question;

public class Q060 {
	public static void main(String[] args) {

		int addition1 = 0;
		int addition2 = 1;
		int sum = 0;
		int result = 0;
		System.out.printf("1 + ");
		while (result < 100) {

			if (result <= 100) {
				result = addition1 + addition2;
				addition1 = result;
				if (result <= 100) {
					System.out.printf("%d + ", result);
					sum+=result;
				}
				
			}
			//sum+=result;
			if (result <= 100) {
				result = addition2 + addition1;
				addition2 = result;
				if (result <= 100) {
					System.out.printf("%d + ", result);
					sum+=result;
				}
			}
			
		}
		System.out.printf("= %d",sum+1);
	}
}
