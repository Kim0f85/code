package com.test.java.member;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.Scanner;

import com.test.java.view.View;
import com.test.java.resource.Path;

public class Login {
	public static void login() throws IOException {
		
		Scanner scan = new Scanner(System.in);
		String id = "";
		String pw = "";
		
		
		View.title("로그인");
		
		
		System.out.print("아이디: ");
		id = scan.nextLine();
		
		System.out.println("암호: ");
		pw = scan.nextLine();
		
		try {
			BufferedReader reader = new BufferedReader(new FileReader(Path.MEMBER));
			
			String line = null;
			
			while((line=reader.readLine())!=null) {
				String []temp = line.split(",");
				if(temp[0].equals(id)&&temp[1].equals(pw)) {
					Member.auth = id;
					Member.level=temp[3];
				}
			}
			
		} catch (FileNotFoundException e) {
			System.out.println("login, login");
			e.printStackTrace();
		}
		
		//로그인 성공 유무
		if(Member.auth!=null) {
			System.out.println("로그인 성공!!");
		}else {
			System.out.println("로그인 실패;;");
		}
		
		//잠시 중단 
		View.pause();
		
	}
}
