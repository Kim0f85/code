package com.test.question;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.lang.annotation.Repeatable;

public class Q038 {
	public static void main(String[] args) throws NumberFormatException, IOException {
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		System.out.print("입력 횟수: ");
		int num = Integer.parseInt(reader.readLine());
		
		m1(num);
	}

	private static void m1(int num) throws NumberFormatException, IOException {
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		int odd = 0;
		int oddsum = 0;
		int even = 0;
		int evensum = 0;
		
		for(int i =0;i<num;i++) {
			System.out.print("숫자: ");
			int input = Integer.parseInt(reader.readLine());
			if (input%2==0) {
				evensum += input;
				even++;
			}else {
				oddsum+=input;
				odd++;
			}
			
		}
		System.out.printf("짝수 %d개의 합: %d\n",even,evensum);
		System.out.printf("홀수 %d개의 합: %d\n",odd, oddsum);
		
	}
}
