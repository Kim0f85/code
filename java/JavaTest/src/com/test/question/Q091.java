package com.test.question;

import java.util.Arrays;
import java.util.Scanner;

import javax.naming.spi.DirStateFactory.Result;

public class Q091 {
	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		System.out.print("입력: ");
		String input = scan.nextLine();
		int result = 0;
		String oper = "";
		int arr1 = 0;
		int arr2 = 0;
		String [] arr = new String [2];
		
		if(input.contains("+")) {
			oper = "+";
		}else if(input.contains("-")) {
			oper = "-";
		}else if(input.contains("*")) {
			oper = "*";
		}else if(input.contains("/")) {
			oper = "/";
		}else if(input.contains("%")) {
			oper = "%";
		}else {
			System.out.println("연산식이 없습니다");
		}
		
		input = input.replaceAll(" ","");
		
		arr=input.split("\\"+oper);
		if(arr.length==2) {
			arr1=Integer.parseInt(arr[0]);
			arr2=Integer.parseInt(arr[1]);
			
			if(oper.equals("+")) {
				result = arr1 + arr2;
			}else if(oper.equals("-")) {
				result = arr1 - arr2;
			}else if(oper.equals("*")) {
				result = arr1 * arr2;
			}else if(oper.equals("/")) {
				result = arr1 / arr2;
			}else if(oper.equals("%")) {
				result = arr1 % arr2;
			}
			
			System.out.printf("%d %s %d = %d",arr1,oper,arr2,result);
		}else {
			System.out.println("피연산자가 부족합니다");
		}
	}
}
