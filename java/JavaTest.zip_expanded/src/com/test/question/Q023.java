package com.test.question;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Calendar;

public class Q023 {
	public static void main(String[] args) throws NumberFormatException, IOException {
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		//1. receive data
		//2. use calendar to set DOB
		//3. to convert DOB to milli
		//4. subtraction 
		//5. convert and print
		
		Calendar dad = Calendar.getInstance();
		Calendar girl = Calendar.getInstance();
		
		System.out.print("아빠 생일(년): ");
		int dadDOByear = Integer.parseInt(reader.readLine());
		System.out.print("아빠 생일(월): ");
		int dadDOBmonth = Integer.parseInt(reader.readLine());
		System.out.print("아빠 생일(일): ");
		int dadDOBday = Integer.parseInt(reader.readLine());
		
		dad.set(dadDOByear, dadDOBmonth,dadDOBday);
		
		System.out.print("딸 생일(년): ");
		int girlDOByear = Integer.parseInt(reader.readLine());
		System.out.print("딸 생일(월): ");
		int girlDOBmonth = Integer.parseInt(reader.readLine());
		System.out.print("딸 생일(일): ");
		int girlDOBday = Integer.parseInt(reader.readLine());
		
		girl.set(girlDOByear, girlDOBmonth, girlDOBday);
		
		System.out.printf("아빠는 딸보다 총 %,d일을 더 살았습니다.",(girl.getTimeInMillis()-dad.getTimeInMillis())/1000/60/60/24);
	}
}
