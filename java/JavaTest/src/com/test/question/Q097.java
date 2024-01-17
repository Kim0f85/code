package com.test.question;

public class Q097 {
	public static void main(String[] args) {
		Refrigerator r = new Refrigerator();

		Item item1 = new Item();
		item1.setName("김치");
		item1.setExpiration("2024-02-01");
		r.add(item1);//냉장고에 넣기

		Item item2 = new Item();
		item2.setName("깍두기");
		item2.setExpiration("2024-01-25");
		r.add(item2);//냉장고에 넣기

		Item item3 = new Item();
		item3.setName("멸치볶음");
		item3.setExpiration("2024-01-27");
		r.add(item3);//냉장고에 넣기

		Item item4 = r.get("깍두기");//냉장고에서 꺼내기
		System.out.printf("%s의 유통기한 : %s\n", item4.getName(), item4.getExpiration());

		System.out.printf("냉장고 안의 총 아이템 개수 : %d개\n", r.count());

		r.listItem();
	}
}

class Refrigerator {
	   private Item[] items = new Item[100];

	   public void add(Item item) {
	   }
	   
	   public Item get(String name) {
	   }

	   public int count() {
	   }

	   public void listItem() {
	   }
	}

	class Item {
	   private String name;
	   private Calendar expiration;
	}
