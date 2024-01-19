package com.test.question;

import java.io.File;
import java.io.ObjectInputStream.GetField;
import java.util.Scanner;

import javax.naming.spi.DirStateFactory.Result;

public class Q111 {
	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);	
		 System.out.print("파일 경로: ");
		 String folderPath = scan.nextLine();
		 System.out.print("확장자: ");
		 String serchexten = scan.nextLine();
		 String result = "";
		 
		 for ( int i=0; i<serchexten.length();i++) {
			 if(serchexten.charAt(i)<=90&&serchexten.charAt(i)>=65) {
				 char c1 =(char)(serchexten.charAt(i)+32);
				 char c2 = (serchexten.charAt(i));
				 serchexten=serchexten.replace(c2,c1);
			 }
		 }
//		 for ( int i=0; i<serchexten.length();i++) {
//			 if(serchexten.charAt(i)<=90&&serchexten.charAt(i)>=65) {
//				 result+=(char)(serchexten.charAt(i)+32);
//			 }else {
//				 result+=(char)(serchexten.charAt(i));
//			 }
//		 }
		 
		 File dir = new File(folderPath);
		 
		 File[]list = dir.listFiles();
		 
		 for(File file : list) {
			 if(getExtenstion(file).equals(serchexten)) {
				 System.out.println(file.getName());
			 }
		 }
	}

	private static String getExtenstion(File file) {
		String fileName = file.getName();
		int location = fileName.indexOf('.');
		String fileType = fileName.substring(location+1,fileName.length());
		
		return fileType;
		
	}
}
