package com.test.question;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q028 {
	public static void main(String[] args) throws NumberFormatException, IOException {
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.print("근무 년수: ");
		int expyear = Integer.parseInt(reader.readLine());
		String expname = "";
		String prevname = "";
		String nxtname = "";
		int lvlcounter = 0;
		int nxtlvl = 0;
		
		
		if (expyear >= 1) {
			if (expyear >=10) {
				expname = "고급 개발자";
				prevname = "중급 개발자";
				lvlcounter = expyear - 9;
				
			} else if (expyear >= 5) {
				expname = "중급 개발자";
				prevname = "초급 개발자";
				nxtname = "고급 개발자";
				lvlcounter = expyear - 4;
				nxtlvl = 10-expyear;
				
			} else if (expyear >= 1) {
				expname = "초급 개발자";
				nxtname = "중급 개발자";
				nxtlvl = 5-expyear;
			}
			
		}else {
			System.out.println("입력한 값이 올바르지 않습니다. 1이상의 값을 입력하시오.");
		}
		
		System.out.printf("%d년차 %s 입니다.\n",expyear,expname);
		
		if (lvlcounter>0) {
			System.out.printf("당신은 %d년전까지 %s였습니다.\n",lvlcounter,prevname);
		}
		
		if (nxtlvl > 0) {		
			System.out.printf("앞으로 %d년 더 근무를 하면 %s가 됩니다.",nxtlvl,nxtname);
		}
		
		//당신은 1년전까지 초급 개발자였습니다.
		//앞으로 5년 더 근무를 하면 고급 개발자가 됩니다.
	}
}
