package com.test.java.member;
/**
 * 관리자 클래스입니다 
 */
public class Admin {
	private String name; 
	private String color;
	
	/**
	 * 생서자입니다
	 * @param name 관리자명
	 * @param color 관리자 등급
	 */
	public Admin(String name, String color) {
		this.name = name;
		this.color = color;
	}
}
