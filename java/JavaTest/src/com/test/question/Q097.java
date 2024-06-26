package com.test.question;

public class Q097 {
	public static void main(String[] args) {
		Refrigerator r = new Refrigerator();

		Item item1 = new Item();
		item1.setName("김치");
		item1.setExpiration("2024-02-01");
		r.add(item1);// 냉장고에 넣기

		Item item2 = new Item();
		item2.setName("깍두기");
		item2.setExpiration("2024-01-25");
		r.add(item2);// 냉장고에 넣기

		Item item3 = new Item();
		item3.setName("멸치볶음");
		item3.setExpiration("2024-01-27");
		r.add(item3);// 냉장고에 넣기

		Item item4 = r.get("깍두기");// 냉장고에서 꺼내기
		System.out.printf("%s의 유통기한 : %s\n", item4.getName(), item4.getExpiration());

		System.out.printf("냉장고 안의 총 아이템 개수 : %d개\n", r.count());

		r.listItem();
	}
}

class Refrigerator {
	private Item[] items = new Item[100];
	int index = 0;
	public void add(Item item) {
		
		this.items[index]=item;
		index++;
		System.out.printf("'%s'를 냉장고에 넣었습니다.\n",item.getName());
		
	}
	public Item get(String name) {
		
		int count = 0 ;
		for(int i = 0 ; i < this.items.length ; i++) {
			if(this.items[i].getName().equals(name)) {
				count = i;
				replace(count);
				break;
			}
		}
		return this.items[count]; 
	}

	private void replace(int count) {
		for(int i = count ; i < this.items.length-1;i++) {
			this.items[i]=this.items[i+1];
		}
		index--;
	}

	public int count() {
		return index;
	}

	public void listItem() {
		System.out.println("[냉장고 아이템 목록]");
		for(int i = 0 ; i < index ; i++) {
			System.out.printf("%s(%s)\n",this.items[i].getName(),this.items[i].getExpiration());
		}
	}
}

class Item {
	private String name;
	private String expiration;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getExpiration() {
		return expiration;
	}
	public void setExpiration(String expiration) {
		this.expiration = expiration;
	}
}
