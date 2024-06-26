package com.test.question;

import java.io.File;
import java.io.ObjectInputStream.GetField;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

import javax.naming.ldap.SortControl;

public class Q114 {
	public static void main(String[] args) {
		String path = "C:\\class\\code\\java\\파일 디렉토리 문제\\확장자별 카운트";

		File dir = new File(path);
		ArrayList<String>extension = new ArrayList<String>();
		
		File[] dirfiFiles = dir.listFiles();
		for (File itemFile : dirfiFiles) {
			extension.add(getExtenstion(itemFile));
		}
		extension.sort(null);
		
		HashSet<String>set = new HashSet<String>(extension);
		
		List<String> uniqueExt = new ArrayList<String>(set);
		
		System.out.println(uniqueExt);
		for(int i = 0 ; i<uniqueExt.size();i++) {
			int repeat = 0;
			for(int j = 0 ; j <extension.size();j++) {
				if(uniqueExt.get(i).equals(extension.get(j))) {
					repeat++;
				}
			}
			System.out.printf("%s: %d개\n",uniqueExt.get(i),repeat);
		}
	}
	
	private static String getExtenstion(File itemFile) {
		String fileName = itemFile.getName();
		int location = fileName.indexOf('.');
		String fileType = fileName.substring(location,fileName.length());
		
		return fileType;
		
	}
}



