package com.test.java.repository;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.util.ArrayList;

//텍스트 파일과 관련된 업무 담당자
public class Data {

	//score.txt > 어떤 자료형? 구조? >메모리
	//홍길동,100,90,80
	//아무개,90,88,98
	
	private static final String SCORE = "dat\\score.txt";
	
	public static ArrayList<Score> list = new ArrayList<Score>(); //=score.txt
	//public static ArrayList<Student> slist;
	//public static ArrayList<Teacher> tlist;
	
	//프로그램 시작 > score.txt > 메모리
	public static void load() {
		
		try {
			
			BufferedReader reader 
				= new BufferedReader(new FileReader(Data.SCORE));
			
			String line = null;
			
			while ((line = reader.readLine()) != null) {
				
				//텍스트 1줄 > Score 객체 1개
				
				//홍길동,100,90,80
				String[] temp = line.split(",");
				
				Score score = new Score(temp[0], 
										Integer.parseInt(temp[1]), 
										Integer.parseInt(temp[2]), 
										Integer.parseInt(temp[3]));
				
				list.add(score);				
				
			}
			
			reader.close();
			
		} catch (Exception e) {
			System.out.println("Data.load");
			e.printStackTrace();
		}
		
	}

	//프로그램 종료 > 메모리 > score.txt 
	public static void save() {
		
		try {
			
			BufferedWriter writer = new BufferedWriter(new FileWriter(Data.SCORE));
			
			//ArrayList<Score> >> Score 1개 >> 텍스트 파일 1줄 저장
			for (Score score : Data.list) {
			
				//Score 객체 1개 > 홍길동,100,90,80
				String line = String.format("%s,%d,%d,%d\r\n"
											, score.getName()
											, score.getKor()
											, score.getEng()
											, score.getMath());
				writer.write(line);
				
			}			
			
			writer.close();
			
		} catch (Exception e) {
			System.out.println("Data.save");
			e.printStackTrace();
		}
		
	}
	
}















