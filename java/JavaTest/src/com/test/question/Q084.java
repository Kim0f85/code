package com.test.question;


public class Q084 {
	public static void main(String[] args) {
		
		String content="안녕~ 길동아~ 잘가~ 길동아~길동 길동 길동 길동 길동 ";
		
		String word = "길동";
		boolean check = true;
		
		int count = 0; 
	
		while(check==true) {
			if(content.contains(word)) {
				content=content.replaceFirst(word, "");
				count++;
			}else {
				check=false;
						
			}
		}
		
		System.out.printf("'%s'을 총 %d회 발견했습니다.",word,count);
		
	}
}
