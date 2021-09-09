package com.yourplace.custom.login.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class LoginController {
	@GetMapping("/loginForm.do")
	public String loginForm() {
		System.out.println("[ 로그인 폼 호출 ]");
		return "login/loginForm";
	}
	@PostMapping("/login.do")
	public String login(HttpServletRequest request) {
		String id = request.getParameter("userId");
		String password = request.getParameter("userPw");
		System.out.println(id + "   " + password);
		//로그인 성공시에는 게스트의 홈페이지로 이동시켜준다.
		return "redirect:home.do";
	}
}
