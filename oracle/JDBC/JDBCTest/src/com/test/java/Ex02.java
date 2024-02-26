package com.test.java;

import java.sql.Connection;

public class Ex02 {
	public static void main(String[] args) {
		//접속 시 발생하는 에러 
		//1. 서버 주소 X 
		//	- IO 오류: The Network Adapter could not establish the connection 
		//2. 아이디 X / 암호 X
		//	- ORA-01017: 사용자명/비밀번호가 부적합, 로그온할 수 없습니다.
		//3. 서버 중지  
		//	- Listener refused the connection with the following error:
		//4. 연결문자 오타  
		//	- 부적합한 Oracle URL이 지정되었습니다
		//5. 포트번호 X 
		//	- IO 오류: The Network Adapter could not establish the connection 
		//6.  SID X
		//	- Listener refused the connection with the following error:
		//7. 드라이버 오타 
		//	- oracle.jdbcdriver.OracleDriver
		//8. ojdbc8.jar 
		//	- oracle.jdbcdriver.OracleDriver
		
		
		
		try {
			Connection conn = DBUtil.open("localhost","hr","java1234");
			
			System.out.println(conn.isClosed());
			
			
			conn.close();
			
		} catch (Exception e) {
			System.out.println("Ex02.main");
			e.printStackTrace();			
		}		
	}
}
