package com.test.question;

import java.util.Set;

public class Q096 {
	public static void main(String[] args) {
		Box box1 = new Box();

		box1.cook();
		box1.check();
		box1.list();
	}
}

class Box {
	private Macaron[] list = new Macaron[10];
	String [] color = {"red", "blue", "yellow", "white", "pink", "purple", "green", "black"};

	public void cook() {
		
		for(int i = 0 ; i<list.length; i++) {
			
			Macaron mac= new Macaron();
			
			mac.setColor(color[((int)(Math.random()*color.length))]);
			mac.setSize((int)(Math.random()*11)+5);
			mac.setThickness((int)(Math.random()*19)+1);
			
			this.list[i]=mac;
		}
		
	}

	public void check() {
		
		//size 8cm to 14cm 
		//thick 3mm to 18mm
		//color everything but black 
		int fail = 0 ;
		int success = 0;
		
		int count = 0 ;
		
		for(int i = 0 ; i < list.length ; i++) {
			count = 0;
			count = extracted(count, i);
			if(count==3) {
				success++;
			}else {
				fail++;
			}
		}
		System.out.println("[박스 체크 결과]");
		System.out.printf("QC 합격 개수 : %d개\n",success);
		System.out.printf("QC 불합격 개수 : %d개\r\n"
				+ "\n",fail);
		
	}

	private int extracted(int count, int i) {
		if(list[i].getColor().equals("black")) {
			count--;
		}else {
			count++;
		}
		if(list[i].getSize()<8||list[i].getSize()>14) {
			count--;
		}else {
			count++;
		}
		if(list[i].getThickness()<3||list[i].getThickness()>18) {
			count--;
		}else {
			count++;
		}
		return count;
	}

	public void list() {
		for (int i = 0 ; i < list.length ; i++) {
			System.out.printf("%d번 마카롱 : %dcm(%s, %dmm) : %s\n"
								,i+1,list[i].getSize()
								,list[i].getColor()
								,list[i].getThickness()
								,extracted(0, i)==3?"합격":"불합격");
		}
	}
}

class Macaron {
	private int size;
	private String color;
	private int thickness;
	
	public int getSize() {
		return size;
	}
	public void setSize(int size) {
		this.size = size;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public int getThickness() {
		return thickness;
	}
	public void setThickness(int thickness) {
		this.thickness = thickness;
	}
	
	
}