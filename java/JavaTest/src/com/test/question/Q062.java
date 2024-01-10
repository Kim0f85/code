package com.test.question;

import java.util.Arrays;
import java.util.Scanner;

public class Q062 {
	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		
		System.out.print("학생수: ");
		
		int count = scan.nextInt();
		String[]name =new String[count];
		for (int i = 0; i < count; i++) {
			System.out.print("학생명: ");
			name[i] = scan.next();
			//System.out.println(Arrays.toString(name));
		}

		for (int i = 0; i < name.length - 1; i++) {
			for (int j = 0; j < name.length - 1 - i; j++) {
				if (name[j].compareTo(name[j + 1]) > 0) {
					String temp2 = name[j];
					name[j] = name[j + 1];
					name[j + 1] = temp2;
					
				}
			}
		}
		System.out.printf("입력한 학생은 총 %d명입니다.\n",count);
		for(int i = 0 ; i<count; i++) {
			System.out.printf("%d. %s\n",i+1,name[i]);
		}
		
		//System.out.println(Arrays.toString(name));
	}
}
