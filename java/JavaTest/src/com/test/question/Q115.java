package com.test.question;

import java.io.File;

public class Q115 {
	public static void main(String[] args) {
		String path = "C:\\class\\code\\java\\파일 디렉토리 문제\\파일 제거";
		
		int count = 0 ;
		
		File dir = new File(path);
		
		File[]list = dir.listFiles();
		
		for(File file : list) {
			if(file.length()==0) {
				file.delete();
				count++;
			}
		}
		System.out.printf("총 %d개의 파일을 삭제했습니다.",count);
	}
}
