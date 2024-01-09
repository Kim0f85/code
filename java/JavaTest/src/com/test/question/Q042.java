package com.test.question;

import java.awt.Checkbox;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.Scanner;

public class Q042 {
	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);

		System.out.print("년: ");
		int year = scan.nextInt();
		System.out.print("월: ");
		int month = scan.nextInt();
		System.out.print("일: ");
		int day = scan.nextInt();

		
		int result = yearcheck(year)+monthdaycheck(year, month, day); 
		daycheck(result);
		
		System.out.printf("%d년 %d월 %d일은 %,d일째 되는 날이고 화요일입니다.",year,month,day,result,daycheck(result));

	}

	private static String daycheck(int result) {
		
		int input = result%7;
		String indiday ="";
		
		switch(input) {
			case 7: 
				indiday = "월";
				break;
			case 1:
				indiday = "화";
				break;
			case 2:
				indiday = "수";
				break;
			case 3:
				indiday = "목";
				break;
			case 4:
				indiday = "금";
				break;
			case 5:
				indiday = "토";
				break;
			case 6:
				indiday = "일";
				break;
		
		}
		return indiday;
	}

	private static int monthdaycheck(int year, int month, int day) {
		int count = 0;
		int result = 0;
		
		for (int i = 1; i < month; i++) {
			switch (month) {

			case 4:
			case 6:
			case 9:
			case 11:
				count += 30;
				break;
			case 2:
				if (leapyearcheck(year) == true) {
					count += 28;
					break;
				} else {
					count += 29;
					break;
				}
			default:
				count += 31;
				break;

			}
		}
		return count+day;
	}

	private static boolean leapyearcheck(int year) {
		boolean checker = true;
		if (year % 4 == 0) {
			if (year % 100 == 0) {
				if (year % 400 == 0) {
					checker = false;
				} else {
					checker = true;
				}
			} else {
				checker = false;
			}
		} else {
			checker = true;
		}

		return checker;

	}

	private static int yearcheck(int year) {

		int normyear = 0;
		int leapyear = 0;
		int i = 1;
		while (i < year) {
			if (i % 4 == 0) {
				if (i % 100 == 0) {
					if (i % 400 == 0) {
						leapyear++;
						i++;
					} else {
						normyear++;
						i++;
					}
				} else {
					leapyear++;
					i++;
				}
			} else {
				normyear++;
				i++;
			}
		}
		int totday = (normyear * 365) + (leapyear * 366);
		return totday;
	}
}
