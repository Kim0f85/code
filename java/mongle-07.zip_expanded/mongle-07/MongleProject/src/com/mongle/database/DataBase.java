package com.mongle.database;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.jar.Attributes.Name;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Collector;
import java.util.stream.Stream;


public class DataBase {
	String name;
	String bank;
	String acc;
	String tel;
	String birth;
	String address;
	String id;
	String pw;
	static ArrayList<HashMap> user = new ArrayList<HashMap>();
	
	
	public static ArrayList<HashMap> getUser() {
		return user;
	}

	public static void setUser(HashMap<String,String> newUser) {
		DataBase.user.add(newUser);
	}

	private static void dataSave() {
		// TODO Auto-generated method stub

	}

	private static void dataLoad() {
		// TODO Auto-generated method stub

	}
	
private boolean validBirth(String input) {
		
		String [] birthSplit = input.split("/");
		int year = Integer.parseInt(birthSplit[0]);
		int month = Integer.parseInt(birthSplit[1]);
		String regex = "";
		
		if(month==1||month==3||month==5||month==7||month==8||month==10||month==12) {
			regex =  "^[1900-2020]{4}/[01-12]{2}/[01-31]{2}$";
		}else if(month==2){
			if(year%4==0) {
				regex =  "^[1900-2020]{4}/[01-12]{2}/[01-29]{2}$";
			}
			regex =  "^[1900-2020]{4}/[01-12]{2}/[01-28]{2}$";
		}else {
			regex =  "^[1900-2020]{4}/[01-12]{2}/[01-30]{2}$";
		}
		
		
		Pattern p = Pattern.compile(regex);
		Matcher m = p.matcher(input);
		if (!m.matches()) {
			System.out.println("잘못된 입력입니다.\n");
			System.out.println("도움이 필요하시면 고객센터에 문의 해주세요");
			return m.matches();
		} else {
			this.birth = input;
			return m.matches();
		} 
	
		
	
	
	
	}
	
	public static boolean validName (String input) {

		Pattern p = Pattern.compile("^[가-힣]{2,5}$");
		Matcher m = p.matcher(input);
		if (!m.matches()) {
			System.out.println("잘못된 입력입니다.\n");
			System.out.println("도움이 필요하시면 고객센터에 문의 해주세요");
			
			return m.matches();
		} else {
			HashMap<String, String> newUser = new HashMap<String, String>();
            newUser.put("이름", input);  // 사용자 아이디 저장
            user.add(newUser);  // ArrayList에 사용자 정보 추가
			return m.matches();
		}
	}

//	private boolean validBank (String input) {
//		
//		//Rpattern p = new Rpattern();
//		
//		
//		
//		
//	
//	}

	public static boolean validAcc (String input) {
		
		Rpattern p = new Rpattern();
		
		int i = 0;
		
		ArrayList<String>bankName = new ArrayList<String>();
		
		String [] numSplit = input.split("-");
		if(numSplit.length==4) {
			for(Pattern indi : p.block4) {
				Matcher m = indi.matcher(input);
				boolean matchfound = m.find();
				if (matchfound) {
					bankName.add(p.bankblock4[i]);
					//return m.matches();
				} 
				i++;
			}
		}else if(numSplit.length==3){
			for(Pattern indi : p.block3) {
				Matcher m = indi.matcher(input);
				boolean matchfound = m.find();
				if (matchfound) {
					bankName.add(p.bankblock3[i]);
					//return m.matches();
				} 
				i++;
				
			}
		}else {
			System.out.println("계좌번호에 -를 알맞게 입력 부탁드립니다");
			//return false;
		}
		
		
		
		
		List<String>bankList = new ArrayList<String>();
		for(String name : bankName) {
			if(name.contains("-")) {
				bankList = Arrays.asList(name.split("-"));
			}
			bankList.add(name);
		}
		ArrayList<String>bankN = new ArrayList<String>(bankList);
		
		System.out.println();
		
		
		HashMap<String, String> newUser = new HashMap<String, String>();
		newUser.put("계좌번호", input);  // 사용자 아이디 저장
        user.add(newUser);
		
       
        
		return true;
	}

	

	public static boolean validId(String input) {
		
		input = input.toLowerCase();	

		Pattern p = Pattern.compile("^[a-z0-9]{4,12}$");
		Matcher m = p.matcher(input);
			
		if(m.matches() && !isIdDuplicate(input)) {
			//System.out.println(m.matches()); //testcode
            HashMap<String, String> newUser = new HashMap<String, String>();
            newUser.put("아이디", input);  // 사용자 아이디 저장
            user.add(newUser);  // ArrayList에 사용자 정보 추가
			return m.matches();			
		}else {
			//System.out.println(m.matches()); //testcode
			System.out.printf("\n%22s잘못된 입력입니다.\n\n", " ");
			return m.matches();
		}				
	}//id

	private static boolean isIdDuplicate(String id) {
	        for (HashMap userData : user) {
	            if (userData.containsValue(id)) {
	                return true; // 중복된 ID가 있음
	            }
	        }
	        return false; // 중복된 ID가 없음
	    }

	public static boolean validPw(String input) {

		Pattern p = Pattern.compile("^[a-z0-9]{10,16}$");
		Matcher m = p.matcher(input);

		if (m.matches()) {			
			return m.matches();
		} else {
			// System.out.println(m.matches()); //testcode
			System.out.printf("\n%22s잘못된 입력입니다.\n\n", " ");
			return m.matches();
		}
		
	}//pw

//	private static boolean validTest(String object) {
//		//유효성 검사
//		/*	
//		 	이름	(name)		- Private String
//		 	은행 (bank) 		- Private String
//		 	계좌번호 (acc) 	- Private String
//		 	전화번호 (tel) 	- Private String
//		 	생년월일 (birth) - Private String
//		 	주소 (address) 	- Private String
//		 	아이디 (id) 		- Private String
//		 	비밀번호 (pw) 	- Private String
//		 */
//		
//		
//		return false;
//	}

	private static void get(ArrayList userData) {
		// 호출문

	}

}
