package com.test.question;

public class Q018 {
	public static void main(String[] args) {
		int count = 0;
		count = positive(10);
		System.out.printf("양수: %d개\n",count);
		
		count = positive(10, 20);
		System.out.printf("양수: %d개\n",count);
		
		count = positive(10, 20, -30);
		System.out.printf("양수: %d개\n",count);
		
		count = positive(10, 20, -30, 40);
		System.out.printf("양수: %d개\n",count);
		
		count = positive(10, 20, -30, 40, 50);
		System.out.printf("양수: %d개\n",count);
		
	}//main
	
	public static int positive(int i) {
		
		int numCount = 0;
		numCount+= (i>0)? 1: 0;
		
		return numCount;
		
		
	}
	public static int positive(int i, int j) {
		
		int numCount = 0;
		numCount+= (i>0)? 1: 0;
		numCount+= (j>0)? 1: 0;
		
		return numCount;
		
		
	}
	public static int positive(int i, int j, int k) {
		
		int numCount = 0;
		numCount+= (i>0)? 1: 0;
		numCount+= (j>0)? 1: 0;
		numCount+= (k>0)? 1: 0;
		
		return numCount;
		
		
	}
	public static int positive(int i, int j, int k, int l) {
		
		int numCount = 0;
		numCount+= (i>0)? 1: 0;
		numCount+= (j>0)? 1: 0;
		numCount+= (k>0)? 1: 0;
		numCount+= (l>0)? 1: 0;
		
		return numCount;
		
		
	}
	public static int positive(int i, int j, int k, int l, int m) {
		
		int numCount = 0;
		numCount+= (i>0)? 1: 0;
		numCount+= (j>0)? 1: 0;
		numCount+= (k>0)? 1: 0;
		numCount+= (l>0)? 1: 0;
		numCount+= (m>0)? 1: 0;
		
		return numCount;
		
		
	}
}
