package com.test.question;

import javax.naming.spi.DirStateFactory.Result;

public class Q063 {
	public static void main(String[] args) {
		int[] list = new int[4];

		list[0] = 10;
		list[1] = 20;
		list[2] = 30;
		list[3] = 40;

		String result = dump(list);
		System.out.printf("nums = %s\n", result);
	}

	private static String dump(int[] list) {
		String result = "";
		for (int i =1; i<4;i++) {
			if(i==list.length-1) {
				result+=list[i];
			}else {
				result+=list[i]+",";
			}
			
		}
		result = "[ "+result+" ]";
		return result;
	}
}
