package com.yourplace.custom.login.controller;

import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yourplace.commons.coolsms.SMSCertification;
import com.yourplace.custom.login.service.IdCheckService;
import com.yourplace.custom.login.service.RegistService;
import com.yourplace.custom.login.vo.UserVO;

@Controller
public class RegistController {
	
	@Autowired
	private IdCheckService idCheckService;
	@Autowired
	private RegistService registService;
	
	//스프링 security비밀번호 암호화 및 비밀번호 대조.
	@Autowired
	private BCryptPasswordEncoder passEncoder;
	//passEncoder.encode(암호화할 비밀번호.)
	//if(passEncoder.matches(입력받은 비밀번호 ,암호화된 비밀번호) 로 비밀번호 비교 가능.
	
	
	
	//회원 가입 모듈로 보내주는 메서드.
	@GetMapping("/register.do")
	public String registerForm() {
		return "login/registerForm";
	}
	
	//아이디 중복 체크 메서드.
	@PostMapping("/idcheck.do")
	@ResponseBody
	public String idCheck(String id) {
		System.out.println("[RegistController] AJAX ID for IDCHECK : " + id);
		UserVO vo = new UserVO();
		vo.setUserId(id);
		String result = idCheckService.idCheck(vo);
		return result;
	}
	
	//번호 인증 처리 메서드.
	@GetMapping("/authentication.do")
	@ResponseBody
	public String authNum(String userTel) {//전화번호 확인 메서드.
		System.out.println("[RegistController] 사용자 전화번호 : " + userTel);
		String phoneNumber= userTel;
		Random rand = new Random();
		String numStr = "";
		for(int i = 0 ; i < 6; i++) {
			String randNum = Integer.toString(rand.nextInt(10));
			numStr += randNum;
		}
		System.out.println("[RegistController] 생성된 6자리 인증번호 : "+ numStr);
		SMSCertification.certificationPhoneNumber(phoneNumber, numStr);
		return numStr;
	}
	
	//회원가입 처리 메서드.(INSERT)
	@PostMapping("/regist.do")
	public String regist(UserVO vo) {
		System.out.println("[RegistController] "+vo.toString());
		
		//패스워드 암호화 과정.
		String password = vo.getUserPw();
		String encodePw = passEncoder.encode(password);
		vo.setUserPw(encodePw);
		
		registService.insertUser(vo);
		return "redirect:home.do";
	}
}
