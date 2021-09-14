package com.yourplace.custom.login.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.yourplace.custom.login.service.IdCheckService;
import com.yourplace.custom.login.service.ResetPasswordService;
import com.yourplace.custom.login.service.impl.MailSendService;
import com.yourplace.custom.login.vo.UserVO;

//비밀번호 재설정 관련 요청 처리를 담당할 컨트롤러이다.
@Controller
public class FindAccountPwController {
	//이메일 전송 서비스.
	@Autowired
	private MailSendService mailSendService;
	
	@Autowired
	private ResetPasswordService resetPasswordService;
	//이메일 재설정 전 아이디, 이메일 입력 폼을 응답할 메서드.

	//스프링 security비밀번호 암호화 및 비밀번호 대조.
	@Autowired
	private BCryptPasswordEncoder passEncoder;
	//passEncoder.encode(암호화할 비밀번호.)
	//if(passEncoder.matches(입력받은 비밀번호 ,암호화된 비밀번호) 로 비밀번호 비교 가능.
	
	@GetMapping("/reset/passwordForm.do")
	public String pwForm() {
		return "reset/pwForm";
	}

	@RequestMapping("/reset/password.do")
	public String sendEmail(HttpServletRequest request) {
		String email = request.getParameter("email");
		String id = request.getParameter("id");
		System.out.println("[ RESET PW ]");
		System.out.println("사용자 아이디 : " + id);
		System.out.println("사용자 이메일 : " + email);
		System.out.println();
		UserVO vo = new UserVO();
		vo.setUserId(id);
		//DB에 사용자 아이디가 존재하는지 검사한다.
		//존재한다 1
		//존재하지 않는다 0
		String result = resetPasswordService.idAndEmailCheck(vo);
		
		if(result.equals("1")) {
			request.setAttribute("sendEmail", "1");
			mailSendService.sendResetPwMail(email);
			return "index";
		}
		else {
			request.setAttribute("sendEmail", "0");//0을 아이디,이메일 입력 창에 전달해준다.
			return "reset/pwForm";
		}
		
		
	}
	//이용자가 받은 이메일에서 링크를 클릭하면
	//이용자에게 
	@GetMapping("/reset/resetPwForm.do")
	public String resetPwForm(@RequestParam("email") String email) {
		System.out.println(email);
		return"reset/resetPwForm";
	}
	
	//이용자가 받은 이메일 링크에서 새로운 비밀번호 입력 후
	//확인 버튼을 눌러 요청을 보내면 처리할 컨트롤러.
	@PostMapping("/reset/newpassword.do")
	public String resetPwDo(@RequestParam("password") String password,@RequestParam("email") String email,HttpServletRequest request) {
		UserVO vo = new UserVO();
		vo.setUserPw(passEncoder.encode(password));
		vo.setUserEmail(email);
		resetPasswordService.updatePassword(vo);
		//비밀번호 변경은 sendEmail이라는 키 로 값은 2를 줘서 판단한다.
		request.setAttribute("sendEmail", "2");
		return "index";
	}
	
	//------------------------------------------------------------
	//아이디 찾기 메서드
	//폼으로 이동.
	@GetMapping("/find/account/accountForm.do")
	public String accountForm() {
		return "findAccount/findIdForm";
	}
}
