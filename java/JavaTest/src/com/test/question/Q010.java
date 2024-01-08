package com.test.question;

public class Q010 {
	public static void main(String[] args) {
		
		int num; 
		
		digit(12);
		
		
	}
	
	public static void digit(int num) {
		
		String result = "";
		result= (num <10)?"000"+num 
				: (num<100)?"00"+num 
				: num<1000? "0"+num
				: ""+num;
		System.out.println(result);
	}
}
