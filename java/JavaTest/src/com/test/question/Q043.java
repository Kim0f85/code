package com.test.question;

import java.util.Scanner;

public class Q043 {
	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		System.out.println("컴퓨터가 1~10 사이의 숫자를 1개 생각했습니다.");
		int counter = 0;
		
		
		int comval = (int)(Math.random()*10+1);
		
		counter = getResult(scan, counter, comval);
		if (counter==9) {
			System.out.printf("컴퓨터가 생각한 숫자는 %d입니다.\n",comval);
			System.out.println("모든 기회를 실패했습니다.");
		}else {
			System.out.printf("컴퓨터가 생각한 숫자는 %d입니다.\n",comval);
			System.out.printf("정답을 맞추는데 시도한 횟수는 %d회입니다.\n\n",counter+1);
		}
		System.out.println("프로그램을 종료합니다.");
	}

	private static int getResult(Scanner scan, int counter, int comval) {
		while (counter < 10) {
			
			System.out.print("숫자: ");
			int attempt = scan.nextInt();
			if (comval == attempt) {
				System.out.println("맞았습니다.\n");
				break;
			}else {
				System.out.println("틀렸습니다.\n");
				counter++;
			}
		}
		return counter;
	}
}
