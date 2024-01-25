package com.mongle.repository;

import java.io.BufferedReader;
import java.io.FileReader;
import java.util.ArrayList;

public class Data {

	private static final String userACC = "Lib\\message.txt";
	
	public static ArrayList<UserAcc>list = new ArrayList<UserAcc>();
	
	public static void load() {
		try {
			BufferedReader reader = new BufferedReader(new FileReader(Data.userACC));
			
			String line = null;
			
			while((line = reader.readLine())!=null) {
				String []
			}
			
			
			
		} catch (Exception e) {
			System.out.println("Data.load");
		}
	}
}
