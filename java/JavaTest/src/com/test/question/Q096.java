package com.test.question;

public class Q096 {
	public static void main(String[] args) {
		Box box1 = new Box();

		box1.cook();
		box1.check();
		box1.list();
	}
}

class Box {
	private Maron[] list = new Maron[10];

	public void cook() {
	}

	public void check() {
		
		//size 8cm to 14cm 
		//thick 3mm to 18mm
	}

	public void list() {
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
		int random = (int)((Math.random()*15)+5);
		
		this.size = random;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		int random = (int) ((Math.random() * (8)) + 1);
		switch (random) {
		case 1:
			color = "red";
			break;
		case 2:
			color = "blue";
			break;
		case 3:
			color = "yellow";
			break;
		case 4:
			color = "white";
			break;
		case 5:
			color = "pink";
			break;
		case 6:
			color = "purple";
			break;
		case 7:
			color = "green";
			break;
		case 8:
			color = "black";
			break;
		}
		this.color = color;
	}
	public int getThickness() {
		return thickness;
	}
	public void setThickness(int thickness) {
		this.thickness = thickness;
	}
}