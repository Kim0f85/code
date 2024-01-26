package com.test.question;

import java.awt.print.Printable;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q027 {
	public static void main(String[] args) throws IOException {
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		System.out.print("문자: ");
		String start = reader.readLine();
		String result = "";
		
		if (start.equals("f")|start.equals("F")|start.equals("m")|start.equals("M")|start.equals("s")|start.equals("S")|start.equals("b")|start.equals("B")){
			
			if (start.equals("f")|start.equals("F")) {
				result = "Father";
			}else if (start.equals("m")|start.equals("M")) {
				result = "Mother";
			}else if (start.equals("s")|start.equals("S")) {
				result = "Sister";
			}else {
				result = "Brother";
			}
			
			
		}else {
			System.out.println("입력한 문자가 올바르지 않습니다.");
			
		}
		
		System.out.printf(result);
			
	}
}
