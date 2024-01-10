package com.test.java;

import java.util.Scanner;

import javax.naming.spi.DirStateFactory.Result;import javax.swing.plaf.basic.BasicPasswordFieldUI;

public class Ex29_String {
	public static void main(String[] args) {

		// Ex29_String.java
		/*
		 * 
		 * 문자열, string - string 클래스에서 문자열 조작에 관련된 기능 제공
		 * 
		 * 
		 */
		// m1();
		// m2();
		// m3();
		// m4();
		//m5();
		//m6();
		//m7();
		//m8();
		//m9();
		//m10();;
		//m11();
		//m12();
		//m13();
		//m14();
		//m15();
	}

	private static void m15() {
		//문자열 분리 
		//- String[] split(String delimiter)
		
		String txt = "홍길동,아무개,하하하,호호호,후후후";
		
		//정규 표현식 구분자 사용시 escape 추가 (\\.)(\\|)
		String []list = txt.split(",");
		
		for(int i=0; i<list.length; i++) {
			System.out.println("이름: "+list[i]);
		}
	}

	private static void m14() {
		//문자열 치환(바꾸기)
		//- String replace(String old, String new)
		
		String txt = "안녕하세요. 홍길동입니다";
		
		System.out.println(txt.replace("홍길동", "아무개"));
		
		//masking
		String content = "개시판 글을 씁니다. 바보야!!";
		String word = "바보";
		
		System.out.println(content.replace(word,"**"));
		System.out.println();
		
		
		txt = "          하나        둘      셋      ";
		System.out.println(txt.trim());
		System.out.println(txt.replace(" ",""));
		
		
	}

	private static void m13() {
		//문자열 검색 
		//- indexOf
		//- lastIndexOf
		//- boolean contains(String s)
		
		String txt = "안녕하세요. 홍길동입니다.";
		
		if(txt.indexOf("홍길동")>-1) {
			System.out.println("0");
		}
		
		
		if(txt.contains("홍길동")) {
			System.out.println("0");
		}
		
	}

	private static void m12() {
		//문자열 추출 
		//- String substring(int beginIndex, int endIndex)
		//- String substring(int beginIndex)
		//	- beginIndex : 포함(inclusive)
		//	- endIndex : 미포함 (exclusive)
		
		String txt = "가나다라마바사아자차카타파하";
		
		System.out.println(txt.substring(3,7));
		System.out.println(txt.substring(3));
		
		System.out.println(txt.charAt(4)); //char > 문자코드값
		System.out.println(txt.substring(4,5)); //String
		
		String jumin = "970410-2098765";
		
		//성별 ?
		System.out.println(jumin.charAt(7)=='1'?"남자":"여자");
		System.out.println(jumin.substring(7,8).equals("1")?"남자":"여자");
		
		//몇년생 ?
		System.out.println(""+jumin.charAt(0)+jumin.charAt(1));
		System.out.println(jumin.substring(0,2));
		
		//몇월생?
		System.out.println(jumin.substring(2,4));
		
		//몇일생?
		System.out.println(jumin.substring(4,6));
		System.out.println();
		
		//파일 경로 
		
		String path = "C:\\class\\code\\java\\hello.java";
		
		//1. 파일명 추출 > Hello.java
		int index = path.lastIndexOf("\\");
		String filename = path.substring(index+1);
		System.out.println("파일명: "+filename);
		
		//2. 파일명 > 확장자 없는 파일명 추출 > Hello 
		
		index = filename.lastIndexOf(".");
		
		String filenameWithoutExtension =filename.substring(0,index);
		
		System.out.println("순수 파일명: "+filenameWithoutExtension);
		
		//3. 확장자만 추출 >.java
		String extension = filename.substring(index);
		System.out.println("확장자: "+ extension );
		
	}

	private static void m11() {
		//문자열 검색 
		//- 문자열내에서 원하는 문자(열)을 검색 > 발견된 위치(index) 반환
		
		//- int indexOf(char c)
		//- int indexOf(String s)
		//- int indexOf(char c, int beginIndex)
		//- int indexOf(string s, int beginindex)
		
		//- int LastIndexOf(char c)
		//- int LastIndexOf(String s)
		//- int LastIndexOf(char c, int beginIndex)
		//- int LastIndexOf(string s, int beginindex)
		
		String txt = "홍길동 자바 아무개 자바 테스트";
		
		System.out.println(txt.indexOf("자바")); //4
		System.out.println(txt.indexOf("자바",6)); //11
		
		System.out.println(txt.lastIndexOf("자바")); //11
		System.out.println(txt.lastIndexOf("자바",10)); //11
		
		
		
	}

	private static void m10() {
		//패턴 검색 
		//- boolean startsWith (String word)
		//- boolean ends with(String word)
		
		String name = "홍길동";
		
		//이 사람이 '홍'씨? >boolean
		System.out.println(name.charAt(0)=='홍');
		System.out.println(name.indexOf('홍')==0);
		System.out.println(name.startsWith("홍"));
		System.out.println();
		
		//'동'으로 끝나는지?
		System.out.println(name.charAt(name.length()-1)=='동');
		System.out.println(name.indexOf('동')==name.length()-1);
		System.out.println(name.endsWith("동"));
		
		//자원 경로
		String path = "C:\\class\\code\\java\\hello.java";
		
		if(path.endsWith(".java")) {
			System.out.println("O");
		}else {
			System.out.println("X");
		}
	}

	private static void m9() {
		// 문자열 대소문자 변경 
		//- String toUpperCase();
		//- String toLowerCase();
		
		String content = "오늘 수업하는 과목은 Java입니다.";
		String word = "java";
		
		System.out.println(content.toUpperCase());
		System.out.println(content.toLowerCase());
		
		//대소문자 구분(case sensitive)
		//- 정확도 높음
		//- 검색율 낮음
		if (content.indexOf(word)>-1) {
			System.out.println("검색 결과 O");
		}else {
			System.out.println("검색 결과 X");
		}
		
		//메서드 체인닝 
		//메서드().메서드().메서드()
		//대소문 구분 X(case insensitive)
		//- 검색율 높음
		if(content.toUpperCase().indexOf(word.toUpperCase())>-1) {
			
		}
		
	}

	private static void m8() {
		//게시판 글쓰기 > 금지어!!
		
		String stop = "바보";//금지어 
		String content = "안녕하세요. 저는 자바를 배우는 학생입니다.";
		
		
		if (content.indexOf(stop) >-1) {
			System.out.println("금지어 금지!!");
		} else {
			System.out.println("글쓰기 처리~");
		}
		
		String[] stops = {"바보","멍청이","메롱","ㅂㅏㅂㅗ"};
		
		for(int i=0; i<stops.length; i++) {
			if ( content.indexOf(stops[i])>-1){
				System.out.println("금지어 발견!!");
				break;
			}
		}
		
	}

	private static void m7() {
		//문자열 검색 
		//- 
		//- int indexOf(char c)
		//- int indexOf(String s)
		//- int indexOf(char c, int beginIndex)
		//- int indexOf(string s, int beginindex)
		
		String txt = "안녕하세요. 홍길동입니다";
		
		int index = -1;
		
		index = txt.indexOf('하');
		System.out.println(index);
		
		index = txt.indexOf('홍');
		System.out.println(index);
		
		index = txt.indexOf('강');
		System.out.println(index);
		
		index = txt.indexOf("홍길동");
		System.out.println(index);
		
		txt = "안녕하세요. 홍길동입니다. 안녕하세요. 홍길동입니다. 안녕하세요. 홍길동입니다";
		
		index = txt.indexOf("홍길동");
		System.out.println(index);
		
		index = txt.indexOf("홍길동",index +3);
		System.out.println(index);
		
		
		
		
		
	}

	private static void m6() {
		// 문자열 공백 제거 
		//- string trim();
		//- 문자열에 존재하는 공백(whitespace > 스페이스 탭, 개행)을 제거하는 메서드
		//- 불필요하거나 or 사용자 실수로 생긴 공배 
		
		String txt = "           하나          둘      셋             ";
		
		System.out.printf("[%s}\n",txt);
		System.out.printf("[%s}\n",txt.trim());
		
		
		
		
		
	}

	private static void m5() {

		Scanner scan = new Scanner(System.in);

		System.out.print("단어: ");
		String word = scan.nextLine();

		if (isValid(word)) {
			System.out.println("소문자 O");
		} else {
			System.out.println("소문자 X");
		}

	}

	private static boolean isValid(String word) {
		
		for(int i=0 ; i<word.length(); i++) {
			char c= word.charAt(i);
			if((c<'a'||c>'z')&&(c<'0'||c>'9')) {
				return false;
			}
		}
		
		return true;
	}

	private static void m4() {
		// 단어 입력
		// - 영어 소문자로만
		Scanner scan = new Scanner(System.in);
		boolean checker = true;

		System.out.println("단어: ");
		String word = scan.nextLine();

		for (int i = 0; i < word.length(); i++) {
			char c = word.charAt(i);
//			if (c < 'a' || c > 'z') {
//				System.out.println("소문자 X");
//				break;
//			} else {
//				System.out.println("소문자 O");
//			}

			if (c < 'a' || c > 'z') {
				System.out.println("소문자 X");
				checker = false;
				break;
			}
			// ***** 유효성 검사는 잘목된 것을 찾는 조건을 만든다.
		}
		System.out.println(checker);

		if (checker) {
			System.out.println("소문자 O");
		} else {
			System.out.println("소문자 X");
		}

	}

	private static void m3() {
		// 주민등록번호 입력
		// ex) 970110-1234567

		Scanner scan = new Scanner(System.in);
		System.out.print("주민번호 입력('-'필수): ");

		String jumin = scan.nextLine();

		if (jumin.charAt(6) == '-') {
			System.out.println("올바른 주민번호");
		} else {
			System.out.println("잘못된 주민번호");
		}

	}

	private static void m2() {
		// 문자열 추출
		// - char charAt(int index)
		// - 원하는 위치의 문자를 추출하는 메서드
		// - zero-based index

		String txt = "안녕하세요. 홍길동입니다";

		char c = txt.charAt(4);
		System.out.println(c);

		c = txt.charAt(10);
		System.out.println(c);

//		//Index 15 out of bounds for length 13
//		c= txt.charAt(15);
//		System.out.println(c);

		c = txt.charAt(txt.length() - 1);
		System.out.println(c);

	}

	private static void m1() {
		// 문자열 생성
		// 1. 리터럴
		// 2. 객체 생성

		String str1 = "홍길동";
		String str2 = new String("홍길동");

		// 문자열 길이
		// - int length()

		String txt = "홍길동";
		System.out.println(txt.length());
		System.out.println("자바".length());
		System.out.println("ABC한글123!@#".length());

		// 요구사항] 사용 입력 > 문자수?

		Scanner scan = new Scanner(System.in);

		System.out.print("문장 입력: ");
		String statement = scan.nextLine();

		System.out.printf("%s > %d문자\n", statement, statement.length());

		// 유효성 검사
		// - 이름 입력
		// - 2자 ~ 5자

		System.out.print("이름: ");
		String name = scan.nextLine();

		if (name.length() >= 2 && name.length() <= 5) {
			System.out.println("올바른 이름");
		} else {
			System.out.println("이름을 2~5자 이내로 입력하세요.");
		}

	}
}
