package com.yourplace.commons.json;

import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
//JSON 파일을 읽어오기 위한 클래스.
public class ReadJsonFile {
	//리턴 타입이 String 리스트 타입이다.
	public List<String> parser() throws IOException, ParseException {
		//JSON-SIMPLE 라이브러리를 이용한다.
		JSONParser parser = new JSONParser();
		//IO 의 리더 클래스를 이용해 내 컴퓨터의 *.json을 가지는 파일을 읽어들인다.
		//.gitignore 에 포함되어 있는 파일이기 때문에 GITHUB에는 PUSH 되어 있지 않다.
		Reader reader = new FileReader(
				"/Users/jaejaean/Desktop/KGitBankWebDev/MySpring/yourplace/src/main/resources/config/key.json");
		//JSON 객체를 읽어들인다.
		JSONObject jsonObject = (JSONObject) parser.parse(reader);
		//읽어들인 객체에서 키값을 매개로 Value를 받아온다.
		String accessKey = (String)jsonObject.get("accessKey");
		String secretKey = (String)jsonObject.get("secretKey");
		
		List<String> keys = new ArrayList<String>();
		keys.add(accessKey);
		keys.add(secretKey);
		return keys;
	}
}
