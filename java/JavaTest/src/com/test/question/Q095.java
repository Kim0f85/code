package com.test.question;

public class Q095 {
	public static void main(String[] args) {
		Employee e1 = new Employee();

		e1.setName("홍길동");
		e1.setDepartment("홍보부");
		e1.setPosition("부장");
		e1.setTel("010-1234-5678");
		e1.setBoss(null); // 직속 상사 없음

		e1.info();

		Employee e2 = new Employee();

		e2.setName("아무개");
		e2.setDepartment("홍보부");
		e2.setPosition("사원");
		e2.setTel("010-2541-8569");
		e2.setBoss(e1); // 직속 상사 e1(홍길동)

		e2.info();
	}
}

class Employee {
	private String name;
	private String department;
	private String position;
	private String tel;
	private Employee boss;

	// getter, setter 구현

	public String getName() {
		return name;
	}

	public void setName(String name) {
		if (name.length() >= 2 && name.length() <= 5) {

			for (int i = 0; i < name.length(); i++) {
				char alpha = name.charAt(i);
				if (alpha >= '가' && alpha <= '흫') {
					this.name = name;
				} else {
					System.out.println("");
					this.name = null;
				}
			}
		}
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		if (department.equals("영업부")) {
			department = "영업부";
		} else if (department.equals("기획부")) {
			department = "기획부";
		} else if (department.equals("충무부")) {
			department = "충무부";
		} else if (department.equals("개발부")) {
			department = "개발부";
		} else if (department.equals("홍보부")) {
			department = "홍보부";
		} else {
			department = "wrong input";
		}
		this.department = department;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		if (position.equals("부장")) {
			position = "부장";
		} else if (position.equals("과장")) {
			position = "과장";
		} else if (position.equals("대리")) {
			position = "대리";
		} else if (position.equals("사원")) {
			position = "사원";
		} else {
			position = "wrong input";
		}

		this.position = position;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		if (tel.substring(3,4).equals("-")  && tel.substring(8,9).equals("-")) {
			this.tel = tel;
		}else {
			System.out.println("wrong input");
		}
		
	}

	public Employee getBoss() {
		return boss;
	}

	public void setBoss(Employee boss) {
		if (boss==(null)) {
			return;
		}
		if(!this.department.equals(boss.department)) {
			return;
		}
		this.boss = boss;
	}

	public void info() {
		System.out.printf("[%s]\n",this.name);
		System.out.printf("- 부서: %s\n",this.department);
		System.out.printf("- 직위: %s\n",this.position);
		System.out.printf("- 연락처: %s\n",this.tel);
		if(this.boss==null) {
			System.out.println("- 직속상사: 없음");
		}else {
			System.out.printf("- 직속상사: %s(%s %s)\n",this.boss.getName(),this.boss.getDepartment(),this.boss.getPosition());
		}
	}
}