package com.yourplace.custom.login.service.impl;

import java.io.UnsupportedEncodingException;
import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.stereotype.Service;

import com.yourplace.commons.mailsender.MailHandler;

@Service("mailSendService")
public class MailSendService {
	@Autowired
	private JavaMailSenderImpl mailSender;
	private int size;

	// 인증키 생성
	private String getKey(int size) {
		this.size = size;
		return getAuthCode();
	}

	// 인증코드 난수 발생
	private String getAuthCode() {
		Random random = new Random();
		StringBuffer buffer = new StringBuffer();
		int num = 0;

		while (buffer.length() < size) {
			num = random.nextInt(10);
			buffer.append(num);
		}

		return buffer.toString();
	}

	//비밀번호 재설정 메일 보내기
	public String sendResetPwMail(String email) {
		System.out.println(mailSender);
		
		MimeMessage message = mailSender.createMimeMessage();
		
		try {
			MailHandler mailHandler = new MailHandler(mailSender);
			String htmlStr = "<h1>[이메일 인증]</h1>"
					+ "<p>아래 링크를 클릭하시면 이메일 인증이 완료됩니다.</p>"
					+ "<a href='http://localhost:8080/reset/resetPwForm.do?email="
					+ email+"'>"
					+" -> 클릭하여 비밀번호 재설정 하기 <- </a>";
			mailHandler.setSubject("[ yourplace 비밀번호 재설정 ]");
			//받는이 이메일 주소 세팅.
			mailHandler.setTo(email);
			//받는이가 받을 메세지 세팅.
			mailHandler.setText(htmlStr, true);
			//메일 전송.
			mailHandler.send();
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		return "done";
	}
}
