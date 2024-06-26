package com.test.java.collection;

public class MyQueue {

	private String[] list;
	private int index;

	public MyQueue() {
		this.list = new String[4];
		this.index = 0;
	}

	public String toString() {

		String temp = "";

		temp += String.format("length: %d\r\n", this.list.length);
		temp += String.format("index: %d\r\n", this.index);
		temp += "[\r\n";
		for (int i = 0; i < this.list.length; i++) {
			temp += String.format("		%d: %s\r\n", i, this.list[i]);

		}
		temp += "\r\n]";

		return temp;
	}

	public boolean add(String s) {

		if (checkLength()) {
			doubleList();
		}

		this.list[this.index] = s;
		this.index++;

		return true;

	}

	private void doubleList() {

		String[] temp = new String[this.list.length * 2];
		for (int i = 0; i < this.list.length; i++) {
			temp[i] = this.list[i];
		}
		this.list = temp;
	}

	private boolean checkLength() {

		if (this.index == this.list.length) {
			return true;
		}

		return false;
	}

	public String poll() {
		//무조건 (첫번째 방의)요소를 주세요 !! == 선입선출
		String item = this.list[0];
		
		for(int i = 0 ; i < this.list.length-2 ; i++) {
			this.list[i]= this.list[i+1]; 
		}
		
		this.index--;
		
		return item;
	}

	public int size() {
		
		return this.index;
	}

	public String peek() {
		return this.list[0];
	}

	public void clear() {
		this.index =0;
	}
	
	
}
