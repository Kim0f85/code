package com.test.question;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q031 {
	public static void main(String[] args) throws NumberFormatException, IOException {
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));	
		
		int odd = 0;
		int even = 0;
		
		System.out.print("숫자입력: ");
		int n1 = Integer.parseInt(reader.readLine());
		System.out.print("숫자입력: ");
		int n2 = Integer.parseInt(reader.readLine());
		System.out.print("숫자입력: ");
		int n3 = Integer.parseInt(reader.readLine());
		System.out.print("숫자입력: ");
		int n4 = Integer.parseInt(reader.readLine());
		System.out.print("숫자입력: ");
		int n5 = Integer.parseInt(reader.readLine());
		
		if (n1%2==2 |n1%2==0) {
			even++;
		}else {
			odd++;
		}
		if (n2%2==2 |n2%2==0) {
			even++;
		}else {
			odd++;
		}
		if (n3%2==2 |n3%2==0) {
			even++;
		}else {
			odd++;
		}
		if (n4%2==2 |n4%2==0) {
			even++;
		}else {
			odd++;
		}
		if (n5%2==2 |n5%2==0) {
			even++;
		}else {
			odd++;
		}
		
		System.out.printf("짝수는 %d개 홀수는 %d개 입력했습니다.\n", even, odd);
		if (odd >even) {
			System.out.printf("홀수가 짝수보다 %d개 더 많습니다.",odd-even);
		}else {
			System.out.printf("짝수가 홀수보다 %d개 더 많습니다.",even-odd);
		}
	}
}
