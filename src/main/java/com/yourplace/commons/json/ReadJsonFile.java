package com.yourplace.commons.json;

import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

public class ReadJsonFile {
	public List<String> parser() throws IOException, ParseException {
		JSONParser parser = new JSONParser();
		Reader reader = new FileReader(
				"/Users/jaejaean/Desktop/KGitBankWebDev/MySpring/yourplace/src/main/resources/config/key.json");
		JSONObject jsonObject = (JSONObject) parser.parse(reader);
		String accessKey = (String)jsonObject.get("accessKey");
		String secretKey = (String)jsonObject.get("secretKey");
		
		List<String> keys = new ArrayList<String>();
		keys.add(accessKey);
		keys.add(secretKey);
		return keys;
	}
}
