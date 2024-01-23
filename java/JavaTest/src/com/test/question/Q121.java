package com.test.question;

import java.awt.CheckboxGroup;
import java.io.BufferedReader;
import java.io.FileReader;

public class Q121 {
	public static void main(String[] args) {
		String path = "C:\\class\\code\\java\\파일 입출력 문제\\이름수정.dat";
		
		try {
			BufferedReader reader = new BufferedReader(new FileReader(path));
			String line = null;
			
			String []num = {"0","1","2","3","4","5","6","7","8","9"};
			
			
			
			while((line=reader.readLine())!=null) {
				
				//System.out.println(line);
				
				for(String nums : num) {
					if(line.contains(nums)) {
						line = line.replace(nums, alter(nums)))
					}
				}
				
			}
			
		} catch (Exception e) {
			System.out.println("Q121.main");
		}
		
	}

	private static CharSequence alter(String nums) {
		int number = Integer.parseInt(nums);
		switch(nums) {
		case
		}
		return null;
	}
}
