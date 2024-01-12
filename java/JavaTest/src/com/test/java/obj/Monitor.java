package com.test.java.obj;

public class Monitor {
	private String model;
	private int size;
	private int price;
	private String color;
	//private int level;
	
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public int getSize() {
		return size;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	public int getLevel() {
		if(this.price >=500000) {
			return 1;
		}else if (this.price >= 300000) {
			return 2;
		}else {
			return 3;
		}
	}
	@Override
	public String toString() {
		return "Monitor [model=" + model + ", size=" + size + ", price=" + price + ", color=" + color + "]";
	}
	
	
	
}
