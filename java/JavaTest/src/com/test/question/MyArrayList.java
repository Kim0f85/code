package com.test.question;

public class MyArrayList {
	private String[] list;
	private int index;
	
	public MyArrayList() {
		this.list = new String [4];
		this.index = 0 ; //추가할 방번호 
	}
	
	public boolean add(String string) {
		//1. this.list 배열 
		//2. 배열에 추가 (index위치에 추가)
		//3. this.index ++
		
		//1. check if the index is within the range
		//2. reconstruct array if not 
		//3. add element at index location 
		//4. increase index value (index++)
		
		if(!checklength(index)==true) {
			doubleArray();
		}	
		this.list[index]=string;
		index++;
	
		return false;
		
	}
	
	private void doubleArray() {
		//1. create new array with x2 length 
		//2. copy orignal array to new array 
		//3. set this.list to new array
		String [] temp= new String [this.list.length*2];
		for(int i = 0 ; i < this.list.length ; i++) {
			temp[i] = this.list[i]; 
		}
		this.list = temp;
	}

	private boolean checklength(int index) {
		//1. check if the index is within the range of the array
		//2. return false if it is bigger than list.length
		if(index>this.list.length) {
			return false;
		}
		return true;
	}

	@Override
	public String toString() {
		String temp = "";
		for(int i = 0 ; i < this.list.length ; i++) {
			temp+=String.format("%s\r\n", list[i]);
		}
		
		return temp;
	}

	public String get(int index) {
		//1. using index locate element 
		//2. return element 
		return this.list[index];
	}

	public int size() {
		//1. find how many element is there
		//2. use index 
		
		return index;
	}

	public String set(int index, String string) {
		
		String temp = this.list[index];
		this.list[index]=string;
		
		return temp;
	}

	public String remove(int index) {
		
		this.list[index]=null;
	}
}
