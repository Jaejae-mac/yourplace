package com.yourplace.custom.login.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.yourplace.custom.login.service.LoginUserService;
import com.yourplace.custom.login.vo.UserVO;

@Controller
public class LoginController {
	@Autowired
	private LoginUserService loginUserService;
	
	@GetMapping("/loginForm.do")
	public String loginForm() {
		System.out.println("[ 로그인 폼 호출 ]");
		return "login/loginForm";
	}
	
	@PostMapping("/login.do")
	public String login(UserVO vo, HttpServletRequest request, Model model) {
		int result = loginUserService.getUser(vo);
		if(result == 1) {
			//로그인 성공시에는세션을 생성해준다.
			HttpSession session = request.getSession();
			//세션의 키로 userId 를 주고 세션의 값으로 유저의 아이디를 준다.
			session.setAttribute("userId", vo.getUserId());
			//로그인 성공시에는 호스트의 홈페이지로 이동시켜준다.
			return "redirect:home.do";
		}
		model.addAttribute("result", "0");
		return "redirect:loginForm.do";
	}
}
