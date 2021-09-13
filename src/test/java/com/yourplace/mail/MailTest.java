package com.yourplace.mail;

import java.util.Properties;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/resources/applicationContext.xml")
public class MailTest {
	@Test
	public void test() {
		JavaMailSenderImpl sender = new JavaMailSenderImpl();
		sender.setHost("smtp.gmail.com");
		sender.setPort(587);
		sender.setUsername("kgteambyla@gmail.com");
		sender.setPassword("nybpun-pimNyt-0kynny");

		Properties props = new Properties();
		props.setProperty("mail.smtp.auth", "true");
		props.setProperty("mail.smtp.starttls.enable", "true");
		props.setProperty("mail.smtp.debug", "true"); // 디버깅 설정(옵션)

		sender.setJavaMailProperties(props);

//		메세지 생성
		SimpleMailMessage message = new SimpleMailMessage();

		message.setTo("youngje3431@hanmail.net", "youngje010@naver.com");

		message.setCc("이메일3@gmail.com"); // 참조(Carbon Copy)
		message.setBcc("이메일4@gmail.com"); // 숨은 참조(Blind Carbon Copy)

		message.setSubject("테스트 메일 제목");

		message.setText("테스트 메일 본문");

//		메세지 전송
		sender.send(message);

	}
}
