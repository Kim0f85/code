package com.test.question;

import java.io.File;
import java.util.Scanner;

public class Q112 {
	public static void main(String[] args) {
		System.out.println("파일 이동을 실행합니다.");
		String startPath = "C:\\class\\java\\file\\AAA\\test.txt";
		String endPath = "C:\\class\\java\\file\\BBB\\test.txt";
		Scanner scan = new Scanner(System.in);
		String input = scan.nextLine();
		
		File file1 = new File(startPath);
		File file2 = new File(endPath);
		
		if(input.equals("y")) {
			if(!file2.exists()) {
				file1.renameTo(file2);
			}else {
				file2.delete();
				file1.renameTo(file2);
			}
			System.out.println("파일을 덮어썼습니다.");
		}else if(input.equals("n")) {
			
			System.out.println("작업을 취소합니다.");
			
		}else {
			
			System.out.println("please enter correct input");
			
		}
	}
}
