package com.test.question;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q002 {
	public static void main(String[] args) throws NumberFormatException, IOException {
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.print("첫번째 숫자: ");
		int n1 = Integer.parseInt(reader.readLine());
		
		System.out.print("두번째 숫자: ");
		int n2 = Integer.parseInt(reader.readLine());
		
		System.out.printf("%d + %d = %,d\n",n1,n2,n1+n2);
		System.out.printf("%d - %d = %,d\n",n1,n2,n1-n2);
		System.out.printf("%d * %d = %,d\n",n1,n2,n1*n2);
		System.out.printf("%d / %d = %,.1f\n",n1,n2,(float)n1/(float)n2);
		System.out.printf("%d %% %d = %,d\n",n1,n2,n1%n2);
	}
}
