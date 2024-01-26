package com.test.java;

public class Ex06_Output {
	public static void main(String[] args) {
		
		//Ex06_Output.java
		
		/*
		
			콘솔 입출력, console input output > IO 
			- 기본 입력 장치: 키보드 
			- 기본 출력 장치: 모니터 
			
			콘솔 출력 
			- 클래스.필드.메서드(인자);
			1. System.out.println(값);	
				- println 메서드 
				- print line > 값을 행단위로 출력한다. > 값을 출력한뒤 엔터를 친다.
			
			2. System.out.print(값)
				- print 메서드 
				- 값을 출력하고 엔터를 안친다. 
		
			3. System.out.printf(값)
				- printf 메서드 
				- print format > 출력 형식을 제공한다. 
				- String.format() 메서드와 동일 
				
		
		*/
		//System.out.println(100);
		//System.out.println(200);
		//System.out.println(300);
		
		//System.out.print(100);
		//System.out.print(200);
		//System.out.print(300);
		
		//성적표 출력하기 
		String name1 = "홍길동";
		int kor1 = 100;
		int eng1 = 90;
		int math1 = 80;
		
		String name2 = "아무개";
		int kor2 = 95;
		int eng2 = 98;
		int math2 = 87; 
		
		System.out.println("================================");
		System.out.println("		성적표");
		System.out.println("================================");
		System.out.println("[이름]\t[국어]\t[영어]\t[수학]");
		System.out.println("--------------------------------");
		
		System.out.print(name1);
		System.out.print("\t");
		System.out.print(kor1+"\t");
		System.out.print(eng1+"\t");
		System.out.print(math1+"\r\n");
		
		System.out.println(name2+"\t"+kor2+"\t"+eng2+"\t"+math2);
		
		//printf()
		//- 형식 문자(placeholder)제공 
		//- 가독성 향상(***)
		
		//1. %s > String
		//2. %d > Decimal(정수) > byte, short, int, long
		//3. %f > Float(실수) > float, double
		//4. %c > char
		//5. %b > Boolean
		
		//요구사항]"안녕하세요. 홍길동님" 문장을 출력하시오.
		String name = "홍길동"; //사용자가 키보드로 입력한 이름
		
		System.out.println("안녕하세요. "+name+"님.");
		
		System.out.printf("안녕하세요. %s님.\r\n",name);
		
		//요구사항]"안녕하세요. 홍길동님. 안녕히가세요. 홍길동님."
		System.out.println("안녕하세요. "+name+"님. 안녕히가세요. "+name+"님.");
		System.out.printf("안녕하세요. %s님. 안녕히가세요. %s님.\r\n", name, name);
		
		System.out.println();
		
		System.out.printf("문자열: %s\n","문자열");
		System.out.printf("정수: %d\n",100);
		System.out.printf("실수: %f\n",1.12);
		System.out.printf("문자: %c\n",'A');
		System.out.printf("논리: %b\n",true);
		
		//형식문자 확장기능 
		//1. %숫자d, %숫자s, %숫자f, %숫자c, %숫자b
		//- 정수 
		//- 출력할 내용의 너비를 지정한다.
		//- 탭문자처럼 열을 맞추기 위한 기능
		
		int num = 123; 
		System.out.printf("[%d]\n",num);
		System.out.printf("[%10d]\n",num); //내용물과 상관없이 10칸 확보 (우측정렬)
		System.out.printf("[%-10d]\n",num);//내용물과 상관없이 10칸 확보 (좌측정렬)
		System.out.println();
		
		//2. %.숫자f 
		//- 소수점 이하 자릿수 지정 
		double num2 = 3.14;
		
		System.out.println(num2);
		System.out.printf("%f\n",num2);
		System.out.printf("%.2f\n",num2);
		System.out.printf("%.1f\n",num2);
		System.out.printf("%.0f\n",num2);
		System.out.printf("%.3f\n",3.4567); //확인 후 작업(***)
		System.out.println();
		
		
		//3. %(,)d, %(,)f
		//- 자릿수 표기(천단위 표기 - 3자리)
		
		int price = 1234567;
		
		System.out.printf("금액: %d원 \n", price);
		System.out.printf("금액: %,d원 \n", price);
		
		//천단위 + 소수이하(2자리) + 출력너비(20자리, 우측정렬)
		double num3 = 1234567.7890123;
		System.out.printf("[%,20.2f]\n",num3);
		
		//메뉴판 출력 > 열 정렬 > 탭문자 + %10d 혼합 
		System.out.println("=========================");
		System.out.println("	음료가격");
		System.out.println("=========================");
		System.out.printf("콜라:\t\t %,6d원\n",2500);
		System.out.printf("스무디:\t\t %,6d원\n",3500);
		System.out.printf("사이다:\t\t %,6d원\n",500);
		System.out.printf("아메리카노:\t %,6d원\n",15000);
		
	}
	
}
