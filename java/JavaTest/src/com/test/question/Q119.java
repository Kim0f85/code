package com.test.question;

import java.io.File;

public class Q119 {
	public static void main(String[] args) {
		String path = "C:\\class\\code\\java\\파일 디렉토리 문제\\직원";
		
		File dir = new File(path);
		File[] list = dir.listFiles();
		
		for(File file : list) {
			String filename = file.getName();
			String[] sep = filename.split("_");
			File nameFile = new File(path+"\\"+sep[0]);
			nameFile.mkdir();
			File yearFile = new File(nameFile+"\\"+sep[1]);
			yearFile.mkdir();
			String finaldes = path+"\\"+sep[0]+"\\"+sep[1]+"\\"+filename;
			File relocate = new File(finaldes);
			file.renameTo(relocate);
			
		}
		
	};
}
