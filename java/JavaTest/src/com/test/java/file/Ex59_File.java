package com.test.java.file;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.InputStreamReader;
import java.util.Scanner;

public class Ex59_File {
	public static void main(String[] args) {
		//Ex59_File.java
		/*
			1. 파일/디렉토리 조작
			
			2. 파일 > (내용) 입출력 
				a. 텍스트 
					- 메모장 
					- 이클립스 
					
				b. 비텍스트 입출력(바이너리)
			
			파일 입출력 
			- 자바 프로그램 <-> (데이터) <-> 보조기억장치(HDD,SSD)
			-				->				->						:쓰기(저장)
			-				<-				<-						:읽기
			
			저장 장치 
			- 데이터 1,0 으로 저장 
			- 데이터의 자료형 규칙 없음 
			
			인코딩, Encoding
			- 문자 코드(응용 프로그램 데이터를 부호화(0,1) 시키는 작업
			- 자바 프로그램 ("홍길동",string) > 텍스트 파일(100001000101101010)
			
			디코딩, Decoding 
			- 부호 데이터를 문자 코드를 변환하는 작업 
			- 텍스트 파일(1001000001100101010) > 자바 프로그램("홍길동",string)
			
			인코딩/ 디코딩 규칙 
			- 저장 장치 or 네트워크 상에서 데이터를 표현하는 규칙 
			
			ANSI(ISO-8859-1, EUC-KR, MS949)
			- 영어(숫자, 특수문자, 서유럽 문장 등 ASCII(~255):1byte
			- 한글(한자, 일본어 등): 2byte 
			
			UTF-8 > 국제 표준 역할 > 자바/오라클 UTF-8 사용
			-영어:1byte
			-한글:3byte 
			
			UTF-16
			-영어:2byte
			-한글:2byte 
			
			C:\class\code\java\file
			
			
		*/
		//m1();
		//m2();
		//m3();
		//m4();
		//m5();
		//m6();
		//m7();
		m8();
	}

	private static void m8() {
		//성적 관리 
		//- 성적표 출력
		//- 성적 파일 (score.dat)
		
		//********* 데이터 구조 설계 
		//- 이름, 국어, 영어, 수학, 
		
		System.out.println("===============================================");
		System.out.println("					성정표");
		System.out.println("===============================================");
		System.out.println("[이름]\t[국어]\t[영어]\t[수학]\t[총점]\t[평균]");
		
		try {
			BufferedReader reader = new BufferedReader(new FileReader(".\\dat\\score.dat"));
			
//			File file = new File(".\\dat\\score.txt");
			String line = null; 
			
			while ((line=reader.readLine())!=null) {
				String []temp = line.split(",");
				
				String name =  temp[0];
				int kor = Integer.parseInt(temp[1]);
				int eng = Integer.parseInt(temp[2]);
				int math = Integer.parseInt(temp[3]);
				int total = kor + eng + math;
				double avg= total/3.0;
				
				
				System.out.printf("%s\t%5d\t%5d\t%5d\t%5d\t%5.1f\n"
									,name
									,kor
									,eng
									,math
									,total
									,avg);
			}
			
		} catch (Exception e) {
			System.out.println("Ex59_File.m8");
		}
		
		
	}

	private static void m7() {
		
		try {
			
			Scanner scan = new Scanner(System.in);
			System.out.print("자바 파일명: ");
			String filename = scan.nextLine();
			
			//C:\class\code\java\JavaTest\src\com\test\java\Ex01_DataType.java
			
			String path = "C:\\class\\code\\java\\JavaTest\\src\\com\\test\\java\\"+filename;
			BufferedReader reader = new BufferedReader(new FileReader(path));
			
			String line = null;
			int number = 1;
			
			while((line=reader.readLine())!=null) {
				System.out.printf("%3d: %s\n",number,line);
				number++;
			}
			
			
		} catch (Exception e) {
			System.out.println("Ex59_File.m7");
		}
		
	}

	private static void m6() {
		//FileOutputStream	> FileWriter 	> BufferedWriter
		//FileInputStream	> File Reader 	> BufferedReader
		
		try {
			
//			BufferedWriter writer = new BufferedWriter(new FileWriter("C:\\class\\code\\java\\file\\list.txt"));
//			
//			writer.write(65);
//			writer.newLine();
//			writer.write("문자열");
//			
//			writer.close();
			
//			BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
			
			BufferedReader reader = new BufferedReader(new FileReader("C:\\class\\code\\java\\file\\list.txt"));
			
//			String line = reader.readLine();
//			System.out.println(line);
//			
			
			String line = null;
			while ((line = reader.readLine())!=null) {
				System.out.println(line);
			}
			
			
			
		} catch (Exception e) {
			System.out.println("Ex59_File.m6");
			
		}
		
		
	}

	private static void m5() {
		try {
			
			//파일 읽기
			//FileInputStream > FileReader
			//1. 문자 단위 읽기 (2byte)
			
			FileReader reader = new FileReader("C:\\class\\code\\java\\file\\data.txt");
			
//			int code = reader.read();
//			System.out.println((char)code);
			
			int code = -1;
			
			while((code = reader.read())!=-1) {
				
			}
				
			
			
			reader.close();
			
			
			
		} catch (Exception e) {
			System.out.println("Ex59_File.m5");
		}
		
	}

	private static void m4() {
		//메모장 구현 > 콘솔 버전 
		try {
			Scanner scan = new Scanner(System.in);
			
			System.out.print("저장할 파일명: ");
			String filename = scan.nextLine();
			
			FileWriter writer = new FileWriter("C:\\class\\code\\java\\file\\data.txt"+filename);
			
			boolean loop = true ;
			
			while (loop) {
				System.out.println("입력: ");
				String line = scan.nextLine();
				
				if(line.equals("q!")) {
					break;
				}
				
				writer.write(line);
				writer.write("\r\n");
			}
			
			writer.close();
			System.out.println();
			
		} catch (Exception e) {
			System.out.println("Ex59_File.m4");
		}
		
	}

	private static void m3() {
		try {
			//파일 쓰기
			//FileWriter
			
			FileWriter writer = new FileWriter("C:\\class\\code\\java\\file\\data.txt",true);
			
			writer.write("홍길동");
			
			writer.close();
			
			
			
			
		} catch (Exception e) {
			System.out.println("Ex59_File.m3");
		}
		
	}

	private static void m2() {
		//파일 읽기 == 파일 입력 
		try {
			
			//FileOutputStream <-> FileInputStream
			
			FileInputStream stream = new FileInputStream("C:\\class\\code\\java\\file\\data.txt");
			
			//System.in.read();
			//reader.read();			
//			int code = stream.read();
//			System.out.println((char)code);
			
			//로직 기역 !!
			int code = -1;
			
			while((code = stream.read())!= -1) {
				System.out.print((char)code);
			}
			
			stream.close();
			
		} catch (Exception e) {
			System.out.println("Ex59_File.m2");
		}
		
	}

	private static void m1() {
		//파일 입출력 
		
		//파일 쓰기 == 파일 출력 
		
		//쓰기 스트림 객체
		try {
			
			//텍스트 파일 참조 
			File file = new File("C:\\class\\code\\java\\file\\data.txt");
			
			//파일 객체 > 스트림 생성
			//쓰기 스트림 모드
			//1. Create Mode
			//2. Append Mode
			
			//FileOutputStream
			//- 바이트 단위 쓰기(1byte)			
			FileOutputStream stream = new FileOutputStream(file,true);
			/*
			char c = 'A';
			
			stream.write((int)c);
			stream.write('B');
			stream.write('C');
			*/
			
			String txt = "Hello Java!!";
			
			for(int i = 0 ; i < txt.length() ; i++) {
				char c= txt.charAt(i);
				stream.write(c);
			}
			
			stream.close();
			
			
		}catch (Exception e) {
			System.out.println("Ex59_File.m1");
		}
	}
}
