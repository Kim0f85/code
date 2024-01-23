package com.test.question;

import java.io.BufferedReader;
import java.io.FileReader;

import javax.sound.sampled.Line;

public class Q120 {
	public static void main(String[] args) {
		String path = "C:\\class\\code\\java\\파일 입출력 문제\\이름수정.dat";
		
		try {
			BufferedReader reader = new BufferedReader(new FileReader(path));
			String line = null;
			String target = "유재석";
			String word = "메뚜기";
			while((line=reader.readLine())!=null) {
				
				//System.out.println(line);
				
				if(line.contains("유재석")) {
					line=line.replaceAll(target,word);
				}
				
			}
			
		} catch (Exception e) {
			System.out.println("Q120.main");
		}
		
	}
}
