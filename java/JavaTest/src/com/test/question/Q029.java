package com.test.question;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q029 {
	public static void main(String[] args) throws NumberFormatException, IOException {
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		System.out.print("첫번째 숫자: ");
		int num1 = Integer.parseInt(reader.readLine());
		
		System.out.print("두번째 숫자: ");
		int num2 = Integer.parseInt(reader.readLine());
		
		System.out.print("연산자: ");
		String op = reader.readLine();
		
		int result = 0;
		double d1 = 0;
		
		if (op.equals("+")|op.equals("-")|op.equals("*")|op.equals("/")|op.equals("%")) {
			if (op.equals("+")) {
				result = num1 + num2;
				
			}else if(op.equals("-")) {
				result = num1 - num2;
				
			}else if(op.equals("*")) {
				result = num1 * num2;
				
			}else if(op.equals("/")) {
				d1 = (double)num1/num2;
				
			}else {
				result = num1%num2;
				
			}
		}else {
			System.out.println("연산이 불가능합니다.");
		}
		if (op.equals("/")) {
			System.out.printf("%d %s %d = %.1f", num1, op, num2, d1);
		}else {
			System.out.printf("%d %s %d = %d", num1, op,  num2, result);
		}
		
	}
}
