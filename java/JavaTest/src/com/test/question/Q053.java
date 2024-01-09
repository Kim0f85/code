package com.test.question;

public class Q053 {
	public static void main(String[] args) {
		int start1 = 2;
		int end1 = 5;
		int start2 = 6;
		int end2 = 9;
		
		
		System.out.println(multi(start1,end1));
		System.out.println();
		System.out.println(multi(start2,end2));
		
	}

	private static String multi(int start1, int end1) {
		String inside="";
		for (int j = 1; j <= 9; j++) {
			for (int i = start1; i <= end1; i++) {
				inside =inside+(i+"x"+j+"="+j*i)+"\t";
				
			}
			inside = inside+"\n";
			
		}
		return inside;
		
	}
}
