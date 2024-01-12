package com.test.question;

import java.util.Arrays;
import java.util.Set;

public class Q092 {
	public static void main(String[] args) {
		
		Book b1 = new Book();

		b1.setTitle("자바의 정석");
		b1.setPrice(45000);
		b1.setAuthor("남궁성");
		b1.setPublisher("도우출판");
		b1.setIsbn("8994492038");
		b1.setPage(1022);

		System.out.println(b1.info());
	}
}
class Book{
	private String title;
	private int price;
	private String author;
	private String publisher;
	private String isbn;
	private int page;
	private String pubYear = "2019"; 
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		
		
		
		if (title.length()<50) {
		
			for(int i = 0; i<title.length();i++) {
				char alpha = title.charAt(i);
				if((alpha>='a'&&alpha<='z')||(alpha>='A'&&alpha<='Z')||(alpha>=0)||(alpha>='가'&&alpha<='흫')||alpha==' ') {
					
					this.title = title;
				}else {
					this.title = "";
				}
			}
		}
		
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		if (price>=0&&price<=1000000) {
			this.price = price;
		}
		
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		if(page>0) {
			this.page = page;
		}
		
	}
	public String getPubYear() {
		return pubYear;
	}
	public String info() {
		
		String temp = "";
		temp+= "제목: "+title+"\r\n";
		temp+= "가격: "+String.format("%,d", price)+"\r\n";
		temp+= "저자: "+author+"\r\n";
		temp+= "출판사: "+publisher+"\r\n";
		temp+= "발행년도: "+pubYear+"년\r\n";
		temp+= "ISBN: "+isbn+"\r\n";
		temp+= "페이지: "+String.format("%,d", page)+"\r\n";
		
		return temp;
	}
	
}
