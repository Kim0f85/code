package com.test.java.collection;

import java.util.ArrayList;
import java.util.Random;

public class Ex54_ArrayList {
	public static void main(String[] args) {
		//Ex54_ArrayList.java
		/*
			
			배열 + 컬랙션 + 제어문 + 클래스 
			
			
			컬랙션, collection
			- JCF, Java collection Framework
			- (향상된) 배열 
			- 향상?
				1. 성능 향상
				2. 상용법 향상 
				3. 길이 가변 > 배열의 길이가 늘었다 줄었다 가능 
		
			컬랙션 종류 
			1. List 계열
				- ArrayList (***********)
				- LinkedList
				- Queue
				- Stack
				- Vector(-)
				
			2. Set 계열
				- HashSet (****)
				- TreeSet
				
			3. Map 계열
				- HashMap (*******)
				- TreeMap
				- Properties(-)
				- HashTable(-)
				
			ArrayList 클래스
			- Iterable<E>, Collection<E>, List<E>
			- Resizable-array implementation of the List interface
			- 순수 배열하고 구조가 가장 유사함. 
		
		*/
		//m1();
		//m2();
		//m3();
		//m4();
		//m5();
		//m6();
		//m7();
		m8();
	}

	private static void m8() {
		//배열 생성
		MyArrayList list = new MyArrayList();
		
		System.out.println(list);
		//추가
		list.add("홍길동");
		list.add("아무개");
		list.add("하하하");
		//list.add("호호호");
		System.out.println(list);
//		list.add("후후후");
//		list.add("헤헤헤");
//		list.add("가가가");
//		list.add("나나나");
//		list.add("다다다");
		
//		
//		System.out.println(list);
//
//		//읽기
		System.out.println(list.get(0));
		System.out.println(list.get(1));
		System.out.println(list.get(2));
		System.out.println(list.get(3));
//
//		//개수
		System.out.println(list.size());
//
//		//탐색 + 읽기
		for (int i=0; i<list.size(); i++) {
		      System.out.println(list.get(i));
		}
//
//		//수정
		list.set(0, "우하하");
		System.out.println(list.get(0));
//
//		//삭제
		list.remove(1);
		for (int i=0; i<list.size(); i++) {
		      System.out.println(list.get(i));
		}
		
		list.remove("하하하");
		
		
//
//		//삽입
		list.add(1, "호호호");
		for (int i=0; i<list.size(); i++) {
		      System.out.println(list.get(i));
		}
//
//		//검색
		if (list.indexOf("홍길동") > -1) {
		      System.out.println("홍길동 있음");
		} else {
		      System.out.println("홍길동 없음");
		}
		System.out.println();
		
		System.out.println(list.lastIndexOf("호호호"));
//
		System.out.println(list.indexOf("호호호",2));
		System.out.println(list.lastIndexOf("호호호",2));
//
//		//초기화
		list.clear();
		System.out.println(list.size());
		
		//trimToSize()
		list.add("홍길동");
		list.add("아무개");
		list.add("강아지");
		list.add("고양이");
		list.add("병아리");
		System.out.println(list);
		
		list.trimToSize();
		
		MyArrayList list2 = new MyArrayList(100);
		
		for(int i = 0 ; i<100 ; i++) {
			list2.add(i+"");
		}
	}

	private static void m7() {
		ArrayList<Integer> nums = new ArrayList<>();
		
		System.out.println(nums.size());
		
		nums.add(10);
		nums.add(10);
		nums.add(10);
		nums.add(10);
		System.out.println(nums.size());
		
		for(int i=0; i<1000000 ; i++) {
			nums.add(10);
		}
		System.out.println(nums.size());
		
	}

	private static void m6() {
		ArrayList<String>names = new ArrayList<String>();
		
		names.add("강아지");
		names.add("고양이");
		names.add("참새");
		
		System.out.println(names);
		
		
	}

	private static void m5() {
		//선택? 데이터 집합?
		//1. 배열		> 길이 고정 > 학생수 정확(고정)
		//2. ArrayList	> 길이 가변 > 학생수 불명확
		
		//성적표
		ArrayList<Student>list= new ArrayList<Student>();
		
		Random rnd = new Random();
		
		String [] names = {"홍길도","아무개","강아지","고양이","병아리"};
		
		for(int i = 0; i<5 ; i++) {
			Student s = new Student();
			
			s.setNo(i+1);
			s.setName(names[i]);
			
			//60 ~ 100
			//0 ~ 40 + 60
			s.setKor(rnd.nextInt(41)+60);
			s.setEng(rnd.nextInt(41)+60);
			s.setMath(rnd.nextInt(41)+60);
			
			list.add(s);
		}
		
		//출력
		System.out.println("======================================================");
		System.out.println("			성적표");
		System.out.println("======================================================");
		System.out.println("[번호]\t[이름]\t[국어]\t[영어]\t[수학]\t[총점]\t[평균]");
		
		for(Student s:list) {
			System.out.printf("%5d\t%s\t%5d\t%5d\t%5d\t%5d\t%5.1f\n",s.getNo(),s.getName(),s.getKor(),s.getEng(),s.getMath(),s.getTotal(),s.getAvg());
			
		}
		
		
		
	}

	private static void m4() {
		//객체 배열 
		//Cup[] list = new Cup[5];
		
		ArrayList<Cup>list = new ArrayList<Cup>();
		
		Cup cup = new Cup("white", 5000);
		list.add(cup);
		
		list.add(new Cup("blue",3000));
		list.add(new Cup("yellow",4500));
		
		for(int i = 0 ; i < list.size() ; i++) {
			System.out.println(list.get(i));
		}
		
		for(Cup c : list) {
			System.out.println(c);
		}
	}

	private static void m3() {
		int []		ns1 = new int[3];
		int [][] 	ns2 = new int[2][3];
		int [][][] 	ns3 = new int[2][3][4];
		
		ArrayList<Integer>ms1 = new ArrayList<Integer>();
		ms1.add(10);
		
		ArrayList<ArrayList<Integer>>ms2 = new ArrayList<ArrayList<Integer>>();
		
		ms2.add(new ArrayList<Integer>());
		ms2.get(0).add(10);
		
		//ns3
		ArrayList<ArrayList<ArrayList<Integer>>> ms3 = new ArrayList<ArrayList<ArrayList<Integer>>>();
		
		
		
		
	}

	private static void m2() {
		ArrayList<String>list = new ArrayList<String>();
		
		//1. 요소 추가하기
		//- boolean add(T value)
		//- 배열의 마지막에 추가> Append Mode
		list.add("바나나");
		list.add("딸기");
		list.add("사과");
		list.add("포도");
		list.add("귤");
		
		//2. 요소 개수 
		//- int size()
		System.out.println(list.size());
		
		//3. 요소 읽기
		//- T get(int index)
		System.out.println(list.get(2));
//		System.out.println(list.get(5));
//		System.out.println("홍길동".charAt(5));
		
		System.out.println(list.get(list.size()-1));
		
		//4. 요소 수정 
		//- T set(int index, T newValue)
		String temp = list.set(2, "파인애플");
		System.out.println(temp);
		System.out.println(list.get(2));
		
		//5. 요소 삭제 
		//- 방 없애기 > 길이 줄어든다. 
		//- T remove(int index) > 방번호를 찾아서 삭제 
		//- boolean remove(T value) > 값을 찾아서 삭제 
		//- 시프트발생 > 샂게된 방 이후로 모든 요소의 방번호 -1 
		System.out.println(list.size());
		list.remove(2);
		
		//6. 요소 추가 
		//- 요소는 원하는 추가
		//- Inser Mode
		//- void add(int index, T value)
		System.out.println(list.get(3));
		list.add(2,"망고");
		System.out.println(list.get(3));
		System.out.println(list.size());
		
		
		//7. 요소 검색 
		//- int indexOf(T value)
		//- int lastIndexOf(T value)
		//- boolean contains(T value)
		System.out.println(list.indexOf("포도"));
		
		list.remove(3);
		list.remove("포도");
		
		
		//8. 요소 탐색 
		for(int i = 0 ; i < list.size();i++) {
			System.out.println(list.get(i));
		}
		System.out.println();
		
		//for문
		//- 향상된 for문 (Enhanced for statement 
		
		for(String item : list) {
			System.out.println(item);
		}
		
		//9. 초기화 
		//- 모든 요소 샂게 > 모든방.remove();
		//- void clear()
		
		list.clear();
		
		//10. 빈배열 확인
		//- boolean isEmpty()
		System.out.println(list .isEmpty());
		System.out.println(list.size()==0);
		System.out.println();
		
		list.add("사과");
		
		
		
	}

	private static void m1() {
		//배열 
		//- 타입 명시(int)
		//- 길이 명시(3)
		int[]nums1 = new int[3];
		
		//요소 접근 > 첨자(index) 사용
		nums1[0] = 10;
		nums1[1] = 20;
		nums1[2] = 30;
		
		System.out.println();
		
		//컬렉션 
		//- 타입 명시 (X) > Object 계열
		//- 길이 명시(X)
		//ArrayList nums2 = new ArrayList();
		ArrayList<Integer> nums2 = new ArrayList<Integer>();
		
		//요소 접근 
		//- boolean add(T value)
		//- Append(차래대로 추가)
		nums2.add(100); //nums2[0]
		nums2.add(200); //nums2[1]
		 //nums2[2]
		
		System.out.println(nums2.get(0));
		System.out.println(nums2.get(1));
		System.out.println(nums2.get(2));
		
		System.out.println(nums2.size());
		nums2.add(400);
		nums2.add(500);
		
		for(int i = 0 ; i < nums2.size();i++) {
			System.out.println(nums2.get(i));
		}
		
	}
}

class Cup {
	private String color;
	private int price;
	
	public Cup(String color, int price) {
		this.color=color;
		this.price=price;
	}

	@Override
	public String toString() {
		return "Cup [color=" + color + ", price=" + price + "]";
	}
	
	
}

class Parent {
	private int a;
	private int b;
	
//	public Parent() {
//		this.a=0;
//		this.b=0;
//	}
	
	public Parent(int a, int b) {
		this.a=0;
		this.b=0;
	}

	@Override
	public String toString() {
		return "Parent [a=" + a + ", b=" + b + "]";
	}
	
}

class Child extends Parent{
	
	private int c;
	private int d; 
	
//	public Child() {
//		this.c=0;
//		this.d=0;
//	}
	
	public Child(int c, int d) {
		super(0, 0);//부모 생성자를 명시적으로 호출 
		//super();
		this.c=0;
		this.d=0;
		
		//객체 접근 연산자 
		//1. this > 자기 자신
		//2. super > 자기 부모
		
	}

	@Override
	public String toString() {
		return "Child [c=" + c + ", d=" + d + "]";
	}
}