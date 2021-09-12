package com.yourplace.commons.coolsms;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import org.json.simple.JSONObject;
import org.json.simple.parser.ParseException;

import com.yourplace.commons.json.ReadJsonFile;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

public class SMSCertification {
	public static void certificationPhoneNumber(String phoneNumber, String cerNum) {
		ReadJsonFile file = new ReadJsonFile();
		String accessKey = null;
		String secretKey = null;
		Message coolsms = null;
		try {
			List<String> keys =  file.parserCoolSms();
			accessKey = keys.get(0);
			secretKey = keys.get(1);
			coolsms = new Message(accessKey,secretKey);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		HashMap<String, String> params = new HashMap<String,String>();
		params.put("to", phoneNumber);
		params.put("from","01043022840");
		params.put("type","SMS" );
		params.put("text","휴대폰 인증 테스트 메세지 : 인증번호는"+"[ "+cerNum + " ]" +" 입니다." ); 
		params.put("app_version","test app 1.2" );
		
		try {
			JSONObject obj = (JSONObject)coolsms.send(params);
			System.out.println(obj.toString());
		} catch (CoolsmsException e) {
			System.out.println(e.getMessage());
			System.out.println(e.getCode());
		}
	}
}
