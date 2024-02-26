package com.test.java;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Scanner;
import java.util.jar.Attributes.Name;

public class Ex04_select {
	public static void main(String[] args) {
		//m1();
		//m2();
		//m3();
		//m4();
		m5();
	}

	private static void m5() {
		Scanner scan = new Scanner(System.in);
		
		Connection conn = null;
		Statement stat = null;
		ResultSet rs = null;
		try {
			
			conn = DBUtil.open();
			stat = conn.createStatement();
			
			String sql = "select name from tblInsa";
			System.out.println(sql);
			System.out.print("선택 : ");
			String sel = scan.nextLine();
			
			System.out.print("지급액 : ");
			String bonus = scan.nextLine();
			
			
			
			
			
			
			stat.close();
			conn.close();
		} catch (Exception e) {
			System.out.println("Ex04_select.m5");
		}
		
	}

	private static void m4() {
		
		//부서 입력 > 직원 명단 출력	
		
		Scanner scan = new Scanner(System.in);
		
//		System.out.print("부서명: ");
//		String buseo = scan.nextLine();
		
		
		Connection conn = null;
		Statement stat = null;
		ResultSet rs = null;
		try {
			
			conn = DBUtil.open();
			stat = conn.createStatement();
			
			String sql = "select distinct buseo from tblInsa order by buseo asc";
			
			rs = stat.executeQuery(sql);
			
			System.out.print("보고싶은 부서를 선택하세요.");
			
			ArrayList<String>bList = new ArrayList<String>();
			
			int n =1;
			while(rs.next()) {
				System.out.printf("%d. %s\n",n, rs.getString("buseo"));
				n++;
				bList.add(rs.getString("buseo"));
			}
			System.out.print("선택(번호): ");
			int sel = scan.nextInt();
			
			String buseo = bList.get(sel-1);
			
			//String sql = "select * from tblInsa where buseo = ?";
			
			sql = String.format("select * from tblInsa where buseo = '%s'", buseo);
			
			rs = stat.executeQuery(sql);
			
			System.out.println("[이름]\t[직위]\t[지역]\t[급여]");
			
			while(rs.next()) {
				System.out.printf("%s\t%s\t%s\t%,10d원\n",
						rs.getString("name"),
						rs.getString("jikwi"),
						rs.getString("city"),
						rs.getString("basicpay"));
			}
			
			stat.close();
			conn.close();
			
		} catch (Exception e) {
			System.out.println("Ex04_select.m4");
			e.printStackTrace();
		}
	
		
	}

	private static void m3() {
		//다중값 반환
		//- 다중 레코드
		//- N행 1열 
		Connection conn = null;
		Statement stat = null;
		ResultSet rs = null;
		try {
			conn = DBUtil.open();
			stat = conn.createStatement();
			
			String sql = "select name from tblInsa order by name asc";
			
			rs = stat.executeQuery(sql);
			rs.next();
			System.out.println(rs.getString("name"));
			
			//System.out.println(rs.getString("name"));
			
			while(rs.next()) {
				System.out.println(rs.getString("name"));
				
			}
			
			stat.close();
			conn.close();
		} catch (Exception e) {
			System.out.println("Ex04_select.m3");
		}
		
	}

	private static void m2() {
		//다중값 반환
		//- 1행 N열 
		Connection conn = null;
		Statement stat = null;
		ResultSet rs = null;
		
		try {
			conn = DBUtil.open();
			stat = conn.createStatement();
			
			String sql = "select * from tblAddress where seq = 5";
			rs = stat.executeQuery(sql);
			
			if(rs.next()) {
				String name = rs.getString("name");
				String age = rs.getString("age");
				String address = rs.getString("address");
				
				System.out.println(name);
				System.out.println(age);
				System.out.println(address);
			}else {
				System.out.println("5번 데이터가 없습니다.");
			}
			
			
			
			stat.close();
			conn.close();
		} catch (Exception e) {
			System.out.println("Ex04_select.m2");
		}
		
	}

	private static void m1() {
		//단일값 반환
		//- 1행 1열 
		
		Connection conn = null;
		Statement stat = null;
		ResultSet rs = null;
		
		try {
			conn = DBUtil.open();
			stat = conn.createStatement();
			
			String sql = "select count(*) as cnt from tblAddress";
			
			rs = stat.executeQuery(sql);
			
			//ResultSet = 커서(Cursor) > 판독기 = 스트림, Iterator, 향상된 for
			rs.next();//커서 1줄 전진 
			
			//현재 커서가 가르키고 있는 레코드의 원하는 컬럼을 가져오기 
			// rs.getXXXX()
			
			//int count = rs.getInt(1); //컬럼 순서 
			//int count = rs.getInt("cnt"); //컬럼명
			String count = rs.getString("cnt");
			
			System.out.println(count);
			
			stat.close();
			conn.close();
		} catch (Exception e) {
			System.out.println("Ex04_select.m1");
			e.printStackTrace();
		}
		
	}
	
}
