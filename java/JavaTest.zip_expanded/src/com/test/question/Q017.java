package com.test.question;

public class Q017 {
	public static void main(String[] args) {
		position("홍길동");
		position("홍길동", "유재석");
		position("홍길동", "유재석", "박명수");
		position("홍길동", "유재석", "박명수", "정형돈");
	}

	private static void position(String s1) {
		System.out.printf("사원 : %s\n",s1);
		
	}

	private static void position(String s1, String s2) {
		System.out.printf("\n사원 : %s\n대리 : %s\n",s1,s2);
		
	}

	private static void position(String s1, String s2, String s3) {
		System.out.printf("\n사원 : %s\n대리 : %s\n과장 : %s\n",s1,s2,s3);
		
	}

	private static void position(String s1, String s2, String s3, String s4) {
		System.out.printf("\n사원 : %s\n대리 : %s\n과장 : %s\n부장 : %s",s1,s2,s3,s4);
		
	}
}