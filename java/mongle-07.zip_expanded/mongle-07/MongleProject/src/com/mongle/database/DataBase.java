package com.mongle.database;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.jar.Attributes.Name;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonObject;
import com.mongle.resource.ResourcePath;







public class DataBase {

	static ArrayList<HashMap> user = new ArrayList<HashMap>();
	
	
	public static ArrayList<HashMap> getUser() {
		return user;
	}

	public static void setUser(HashMap<String,String> newUser) {
		DataBase.user.add(newUser);
	}

	public static void dataSave() {
		try {
			
			//set pretty printing
			Gson gson = new GsonBuilder().setPrettyPrinting().create();
			File file = new File(ResourcePath.MEMBER);
			//System.out.println(file.getAbsolutePath());// 경로 찾는 테스트 코드 
			FileWriter writer = new FileWriter(file,false); //덮쓰
						
			//String json = gson.toJson(user);
			writer.write(gson.toJson(user));
			writer.flush(); //버퍼 비우기
			
			writer.close();
			System.out.printf("\n%22ssave 완 ", " "); //testcode
			
		} catch (Exception e) {
			System.out.println("DataBase.dataSave Error");
			e.printStackTrace();
		}

		
	}
	
	// 파일에서 사용자 데이터 읽기
	public static void dataLoad() {

		JSONParser parser = new JSONParser();
        try {
            //FileReader 객체 생성
            FileReader reader = new FileReader(ResourcePath.MEMBER);
            // JSON 데이터를 파싱하여 JSONArray로 변환
            JSONArray userList = (JSONArray) parser.parse(reader);
            
            
            user.clear(); // 기존 리스트를 비움
            Iterator<Object> iterator = userList.iterator();
            while (iterator.hasNext()) {
                JSONObject jsonObject = (JSONObject) iterator.next();
                HashMap<String, String> userData = new HashMap<>();
                // 가정: JSON 객체의 모든 키는 문자열이고, 값도 문자열임
                for (Object key : jsonObject.keySet()) {
                    userData.put((String) key, (String) jsonObject.get(key));
                }
                user.add(userData); // 읽은 데이터를 리스트에 추가
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
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
			System.out.printf("\n%22s잘못된 입력이거나 중복입니다.\n\n", " ");
			return false;
		}				
	}//id

	private static boolean isIdDuplicate(String id) {

        for (HashMap userData : user) {
            //if (userData.containsValue(id)) {
            if(id.equals(userData.get("아이디"))) {
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
	
	
	public static boolean validName (String input) {

		Pattern p = Pattern.compile("^[가-힣]{2,5}$");
		Matcher m = p.matcher(input);
		if (!m.matches()) {
			System.out.printf("\n%22s잘못된 입력입니다.\n"," ");
			System.out.printf("\n%22s도움이 필요하시면 고객센터에 문의 해주세요\n"," ");
			
			return m.matches();
		} else {
			HashMap<String, String> newUser = new HashMap<String, String>();
            newUser.put("이름", input);  // 사용자 아이디 저장
            user.add(newUser);  // ArrayList에 사용자 정보 추가
			return m.matches();
		}
	}//name
	

	
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
			System.out.printf("\n%22s잘못된 입력입니다.\n"," ");
			System.out.printf("\n%22s도움이 필요하시면 고객센터에 문의 해주세요\n"," ");
			return m.matches();
		} else {
			return m.matches();
		} 
	
	}//birth
	

	
	
	
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
					return m.matches();
				} 
				i++;
			}
		}else if(numSplit.length==3){
			for(Pattern indi : p.block3) {
				Matcher m = indi.matcher(input);
				boolean matchfound = m.find();
				if (matchfound) {
					bankName.add(p.bankblock3[i]);
					return m.matches();
				} 
				i++;
				
			}
		}else {
			System.out.printf("\n%22s계좌번호에 -를 알맞게 입력 부탁드립니다.\n"," ");
			
			return false;
		}
		
		
		HashMap<String, String> newUser = new HashMap<String, String>();
		newUser.put("계좌번호", input);  // 사용자 아이디 저장
        user.add(newUser);
		
        
		return true;
	}

	
	private boolean validBank (String input) {
		
		//Rpattern p = new Rpattern();
		
		
		return true;
	}

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