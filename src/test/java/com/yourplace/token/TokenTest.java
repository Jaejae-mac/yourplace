package com.yourplace.token;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yourplace.custom.login.dao.LoginDAO;
import com.yourplace.custom.login.service.ResetPasswordService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/resources/applicationContext.xml",
		"file:src/main/webapp/WEB-INF/config/custom-layer.xml" })
public class TokenTest {
	@Autowired
	private ResetPasswordService resetPasswordService;
	@Autowired
	private LoginDAO loginDAO;
	@Test
	public void tokenTest() {
//		loginDAO.setAccessNum("555555");
		resetPasswordService.getAccessNum("555555");
		resetPasswordService.deleteAccessNum("555555");
	}
}
