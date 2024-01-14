package com.test.question;

public class Q093 {
	public static void main(String[] args) {
		Note note = new Note();

		note.setSize("B4");
		note.setColor("노란색");
		note.setPage(25);
		note.setOwner("홍길동");

		System.out.println(note.info());

		Note note2 = new Note();

		note2.setSize("A4");
		note2.setColor("검정색");
		note2.setPage(100);

		System.out.println(note2.info());
	}
}

class Note {
	private String size;
	private String color;
	private int page;
	private String owner;
	private int price;

	public void setSize(String size) {
		switch (size) {
		case "A3":
		case "A4":
		case "A5":
		case "B3":
		case "B4":
		case "B5":
			this.size = size;
			break;
		default:
			System.out.println("");
			break;
		}
	}

	public void setColor(String color) {
		switch (color) {
		case "검정색":
		case "흰색":
		case "노란색":
		case "파란색":
			this.color = color;
			break;
		default:
			System.out.println("");
			break;
		}
	}

	public void setPage(int page) {
		if (page >= 10 && page <= 200) {
			
			this.page = page;
		}
		System.out.println("");
	}

	public void setOwner(String owner) {
		if (owner.length() >= 2 && owner.length() <= 5) {

			for (int i = 0; i < owner.length(); i++) {
				char alpha = owner.charAt(i);
				if (alpha >= '가' && alpha <= '흫') {
					this.owner = owner;
				} else {
					System.out.println("");
					this.owner=null;
				}
			}
		}

	}

	public String info() {
		String thick ="";
		if (page>=10&&page<=50) {
			thick = "얇다";
		}else if(page>= 51&&page<=100) {
			thick ="보통";
		}else if (page>=101&&page<=200) {
			thick = "두껍다";
		}
		
		String temp = "";
		if (this.owner==null) {
			temp = "주인 없는 노트";
		}else {
			temp += "소유자 : " + owner + "\r\n";
			temp += "특성 : " this.color+ thick + "\r\n";
			temp += "가격 : " + price + "\r\n";
		}
		String fin = "";
		
		fin += "■■■■■■ 노트 정보 ■■■■■■"+"\r\n";
		fin += temp;
		fin += "■■■■■■■■■■■■■■■■■■■■■■\r\n";
		
		System.out.println(fin);
	}
}