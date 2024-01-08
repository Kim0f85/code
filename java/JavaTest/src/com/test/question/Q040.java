package com.test.question;

import java.awt.Desktop.Action;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q040 {
	public static void main(String[] args) throws NumberFormatException, IOException {
		
		//1. read input 
		//2. for loop incre of 2 (+)
		//3. 2nd for loop incre of 2 (-)
		//4. update result
		//5. in 2nd loop print (i)-(j)+
		//6. print \b\b
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.print("시작 숫자: ");
		int start = Integer.parseInt(reader.readLine());
		System.out.print("종료 숫자: ");
		int end = Integer.parseInt(reader.readLine());
		
		m1(start,end);
		
	}

	private static void m1(int start, int end) {
		int result = 0;
		
		if (start%2==0) {
			for (int i = start ; i <= end ; i++) {
				if (i%2==0) {
					result += i;
					System.out.printf("%d ",i);
				}else {
					result -= i;
					System.out.printf("- %d + ",i);
				}
			}
		}else {
			for (int i = start ; i <= end ; i++) {
				if (i%2!=0) {
					result += i;
					System.out.printf("%d ",i);
				}else {
					result -= i;
					System.out.printf("- %d + ",i);
				}
			}
		}
		System.out.println("\b\b="+result);
	}
			
}

