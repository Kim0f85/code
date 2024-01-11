package com.test.java.obj;

public class Book {
	
	
	
//	public int a=10;;
//	private int b=20;
//	
//	public void check() {
//		System.out.println("a: "+a);
//		System.out.println("b: "+b);
//	}
	
	//접근 지정자 가이드 
	//1. 멤버 변수는 무조건 private을 사용한다.
	//  > 멤버 변수를 접근 가능한 입출력 메서드를 생성한다,. 
	//2. 멤버 메서드는 경우에 따라 private or public을 사용한다.
	
	public String title;
	private int price;
	private String publisher;
	private String author;
	
	private int discount; 
	private String iSBN;
	private int pages;
	
	
	public int getDiscount() {
		return discount;
	}
	public void setDiscount(int discount) {
		this.discount = discount;
	}
	public String getiSBN() {
		return iSBN;
	}
	public void setiSBN(String iSBN) {
		this.iSBN = iSBN;
	}
	public int getPages() {
		return pages;
	}
	public void setPages(int pages) {
		this.pages = pages;
	}
	//외부 > (값) > 내부 
	//쓰기 작업 
	public void aaa(int a) {
		
		//개입 
		if(a>0&&a<1000000) {
			price = a;
		}
		
	}
	//내부 > (값) > 외부 
	//읽기 작업
	//getter, Get Method
	public int bbb() {
		return price;
	}
	
	//Setter
	public void setPublisher(String publisher){
		
		//this > 객체 접근 연산자 
		this.publisher = publisher;
	}
	
	//Getter 
	public String getPublisher() {
		return publisher;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	
	
}
