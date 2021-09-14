package com.yourplace.findaccount;

import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yourplace.custom.login.service.FindAccountService;
import com.yourplace.custom.login.vo.UserVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/resources/applicationContext.xml","file:src/main/webapp/WEB-INF/config/custom-layer.xml"})
public class FindAccountTest {
	@Autowired
	private FindAccountService findAccountService;
	@Test
	public void findAccount() {
		UserVO vo = new UserVO();
		vo.setUserTel("01043022840");
		System.out.println(vo.getUserTel());
		UserVO findAccount = findAccountService.getAccount(vo);
		System.out.println(findAccount.toString());
		String foundAccount = findAccount.getUserId();
		
		int accountLength = foundAccount.length();
		int replaceStarsLen = (int)(accountLength * 0.8);

		foundAccount = foundAccount.substring(0, replaceStarsLen);

		
		for(int i = replaceStarsLen+1; i <= accountLength ; i++) {
			foundAccount += "*";
		}
		Date foundRegDate = findAccount.getUserRegDate();
		DateFormat format = new SimpleDateFormat("yyyy/MM/dd");
		String dateStr = format.format(foundRegDate);
		
		System.out.println("[ FindAccountController ] "+foundAccount + " 님이 가입하신 날짜는 " + dateStr + " 입니다.");
		
	}
}
