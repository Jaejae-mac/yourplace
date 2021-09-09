package com.yourplace.coolsms;

import java.util.Random;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yourplace.commons.coolsms.SMSCertification;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/resources/applicationContext.xml")
public class CoolSMSTest {
	@Test
	public void smsTest() {
		String phoneNumber= "01043022840";
		Random rand = new Random();
		String numStr = "";
		for(int i = 0 ; i < 6; i++) {
			String randNum = Integer.toString(rand.nextInt(10));
			numStr += randNum;
		}
		SMSCertification.certificationPhoneNumber(phoneNumber, numStr);
		/*return "ok";
		 * 위의 리턴은 예시이다.
		 * 함수 위에 @ResponseBody 어노테이션도 추가. *
		 * 예를들어, 클라이언트가 번호인증을 위해 ajax 로 통신을 한다고 할 때 위의 
		 * flow를 예외없이 controller 가 처리했다면, ok 라는 문자열을 리턴해주어,
		 * 사용자에게 팝업으로 인증번호를 정상발송했다고 처리하고,
		 * (인증번호를 세션에 저장하는 식으로 값을 유지시켜놓아야 하지 않을까 생각해본다.)
		 * (사용자가 회원가입할 때 사용자 마다 인증번호가 다르니까 말이다.)
		 * (혹은 , 응답 객체에 인증번호를 태워서 페이지에서 보관하고 있다가 사용자가 인증번호를 입력하고
		 * 인증 확인을 눌러 서버에 전송할 때 두 정보를 같이보내서 비교한다던가 하는 방식도 고려 가능해 보인다.)
		 * 사용자가 인증번호를 입력하고 다시 인증확인 버튼을 누르면
		 * 같은 방법으로 ajax 비동기로 controller 에 요청을 보내게될 것이다.
		 * 그애서 인증번호가 일치한다면 사용자에게 일치하고 정상적으로 서버와 통신을 완료 했다는 문자를 
		 * 보내면 인증 완료로 처리하고 틀렸다면 다시 인증하도록 유도해야 한다고 보인다.
		 * */
	}
}
