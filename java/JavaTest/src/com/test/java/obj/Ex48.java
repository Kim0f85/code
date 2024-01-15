package com.test.java.obj;

public class Ex48 {
	public static void main(String[] args) {
		
		//Ex48.java
		//1. 추상 클래스 or 인터페이스
		//2. 업캐스팅 or 다운캐스팅 
		
		//상황] 프린터 대리점 운영
		//1. LG100 모델 x5대, HP200 모델 x3대
		//2. 하루 1번씩 > 제품 점검 > 모델과 상관없이 출력 기능 확인 
		
		//추가 사항]
		//1. 프린터 재고 증가 
		//	- LG100 > 500대
		//	- HP200 > 300대
		//2. 프린터 종류 증가 
		//	- Dell300
		//	- BenQ400
		//3. 각 브랜별 고유 기능 점검 
		//	- LG100 > selfTest()
		//	- HP200 > call()
		
		//m1();
		m2();
		//m3();
		
	}

	private static void m3() {
		//Case 3.
		//- 배열 사용 + 업/다운 캐스팅 
		
		LG100 lg1 = new LG100("lg100", 300000,  "black", 100);
		Printer p1;
		
		//업캐스팅
		//printer = LG100
		//부모클래스 = 자식 클래스 
		//100% 안전
		p1 = lg1 ;
		
		//자식 객체를 부모 변수에 넣을 수 있다. 
		Printer p2 = new LG100("lg100", 300000,  "black", 100);
		Printer p3 = new HP200("lg100", 350000,"white");
		
		Printer[] plist = new Printer[3];
		plist[0]=new LG100("lg100", 300000,  "black", 100);
		plist[1]=new HP200("lg100", 350000,"white");
		
		//Case 3.
		//- 배열 사용 + 업/다운 캐스팅 
		Printer[] list = new Printer[8];
		for(int i = 0 ; i<list.length;i++) {
			if(i<5) {
				list[i] =  new LG100("lg100", 300000,  "black", 100);
			}else if(i<7){
				list[i]=new HP200("lg100", 350000,"white");
			}else {
				list[i]=new Dell300("Dell300", 350000);
			}
		}
		
		for(int i = 0 ; i<list.length;i++) {
			list[i].print(); 
			//list[i].selfTest(); 
			//list[i].call(); 
			
			//다운 캐그팅 
			if(i< 5) {
				LG100 lg = (LG100)list[i];
				lg.selfTest();
			}else if(i<7){
				HP200 hp = (HP200)list[i];
				hp.call();
			}
			
			//연산자
			//- 객체 
			//- 객체 instanceof 자료형 
			System.out.println(list[i] instanceof Printer);
			
			if (list[i]instanceof LG100) {
				LG100 lg100 = 
			}
			
			
		}
		
		
	}

	private static void m2() {
		//case 2.
		//- 같은 종류의 프린터를 조작 > 아주 가성비 높은 방식
		//- 다른 종류의 프린터가 증가 > 같은 패터 증가 
		LG100[]lg = new LG100[5];
		HP200[]hp = new HP200[3];
		Dell300[]dell300s= new Dell300[5];
		
		for (int i=0;i<lg.length;i++) {
			lg[i]= new LG100("lg100", 300000, "black", 100);
		}
		
		for (int i=0;i<lg.length;i++) {
			hp[i]= new HP200("hp200", 350000, "white");
		}
		
		//점검
		for (int i=0;i<lg.length;i++) {
			lg[i].print();
			lg[i].selfTest();
			
		}
		
		for (int i=0;i<lg.length;i++) {
			hp[i].print();
			hp[i].call();
		}
	}

	private static void m1() {
		//case 1.
		//- 가장 비효율적인 방식 
		//- 대당 비용 동일
		LG100 lg1 = new LG100("lg100", 300000, "black", 100);
		LG100 lg2 = new LG100("lg100", 300000, "black", 100);
		LG100 lg3 = new LG100("lg100", 300000, "black", 100);
		LG100 lg4 = new LG100("lg100", 300000, "black", 100);
		LG100 lg5 = new LG100("lg100", 300000, "black", 100);
		
		HP200 hp1 = new HP200("hp200", 350000, "white");
		HP200 hp2 = new HP200("hp200", 350000, "white");
		HP200 hp3 = new HP200("hp200", 350000, "white");
		
		
	}
}
//클래스의 부모 역할 
//1. 일반 클래스
//2. 추상 클래스 
//3. 인터페이스
abstract class Printer {
	
	private String model;
	private int price;
	
	public Printer(String model, int price) {
		this.model = model;
		this.price = price;
	}
	
	//제품의 종류와 상관없이 공통된 기능 선언 > 출력 기능 > void print()
	public abstract void print() ;
}

class LG100 extends Printer{
	
	public LG100(String model, int price,String color, int size) {
		super(model, price);
		this.color=color;
		this.size = size;
	}

	private String color;
	private int size;//A4, A5
	
	public void print() {
		System.out.printf("%d 사이즈로 출력합니다.\n",this.size);
	}
	
	public void selfTest() {
		System.out.println("자가 진단을 합니다");
	}
	
}

class HP200 extends Printer{
	
	
	private String type;//터치 비터치 
	
	public HP200(String model, int price,String type) {
		super(model, price);
		this.type = type;
		
	}
	
	public void call() {
		System.out.println("상담원과 연결합니다.");
	}

	@Override
	public void print() {
		System.out.printf("%s 방식으로 출력합니다.\n",this.type);
		
	}
}

class Dell300 extends Printer{

	public Dell300(String model, int price) {
		super(model, price);
		// TODO Auto-generated constructor stub
	}

	@Override
	public void print() {
		System.out.println("Dell 방식으로 출력합니다");
	}
	
}
