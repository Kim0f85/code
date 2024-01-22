package com.test.question;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Set;

public class Q118 {
	public static void main(String[] args) {
		String path = "C:\\class\\code\\java\\파일 디렉토리 문제\\크기 정렬";
		
		File dir = new File(path);
		
		ArrayList<File>order = new ArrayList<File>();
		
		count(dir,order);
		
		for(String item : fileName) {
			System.out.printf("%s , %s\n",item,order.get(item));
		}
		
	}
	
	private static void count(File dir, ArrayList<File> order) {
		// 1. 목록 가져오기
		File[] list = dir.listFiles();

		// 2. 파일 > 개수
		for (File file : list) {
			if (file.isFile()) {
				//if(file.length)
				order.add()
				//System.out.println(order);
			}
			
			
		}
		
		// 3. 자식 폴더 동일한 행동 반복
		for (File subdir : list) {
			if (subdir.isDirectory()) {
				//subdir.deleteOnExit();
				
				count(subdir, order);
				//subdir.delete();
			}
		}
	}
	private static String getSize(long fileSize) {
		String result = "";
		double carry = fileSize;
		int size = 0;
		String desc = "";
		
		for(int i = 0 ; i < 4 ; i++) {
			if(carry<=1024.0) {
				size=i;
				break;
			}else {
				carry=carry/1024.0;
			}
		}
		
		switch (size) {
		case 0: desc = "B"; break;
		case 1: desc = "KB"; break;
		case 2: desc = "MB"; break;
		case 3: desc = "GB"; break;
		case 4: desc = "TB"; break;
		}
		
		result = String.format("%.2f %s", carry, desc) ;	
		
			
		return result;
	}
	
}
