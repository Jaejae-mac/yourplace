package com.yourplace.custom.login.controller;

import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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

//회원가입관련 요청과 응답을 처리할 컨트롤러.
@Controller
public class RegistController {
	
	//아이디 중복체크 서비스.
	@Autowired
	private IdCheckService idCheckService;
	//회원가입 서비스.
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
	//비동기로 전화번호 인증을 처리해준다.
	@GetMapping("/authentication.do")
	@ResponseBody
	public String authNum(String userTel) {//전화번호 확인 메서드.
		System.out.println("[RegistController] 사용자 전화번호 : " + userTel);
		String phoneNumber= userTel;
		Random rand = new Random();
		String numStr = "";
		//랜덤하게 생성된 6자리의 인증번호를 만든다.
		for(int i = 0 ; i < 6; i++) {
			String randNum = Integer.toString(rand.nextInt(10));
			numStr += randNum;
		}
		System.out.println("[RegistController] 생성된 6자리 인증번호 : "+ numStr);
		//certificationPhoneNumber 메서드를 통해 사용자번호로 생성된 인증번호를 전송한다.
		SMSCertification.certificationPhoneNumber(phoneNumber, numStr);
		//사용자에게 문자메세지 전송후, view에도 동일한 인증번호를 전달한다.
		return numStr;
	}
	
	//회원가입 처리 메서드.(INSERT)
	@PostMapping("/regist.do")
	public String regist(UserVO vo, HttpServletRequest request) {
		//제대로된 아이디와 비밀번호 가 전송되었을 경우.
		if(vo.getUserId().length() > 0 && vo.getUserPw().length() > 0) {
			//회원가입 완료후 아이디 세션 생성.
			HttpSession session = request.getSession();
			session.setAttribute("userId", vo.getUserId());
			session.setAttribute("userType", 0);
			registService.insertUser(vo);
		}
		
		//회원가입후 홈으로 보내주고, 쿠폰을 발급해 주어야 한다. - 미구현.
	public String regist(UserVO vo) {
		//패스워드 암호화 과정.
		String password = vo.getUserPw();
		String encodePw = passEncoder.encode(password);
		vo.setUserPw(encodePw);
		System.out.println(vo.getKakaoId());
		registService.insertUser(vo);
		return "redirect:home.do";
	}
}
