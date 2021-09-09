package com.yourplace.host.login.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class LoginController {
	@PostMapping("/login.hdo")
	public String login(HttpServletRequest request) {
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		System.out.println(id + "   " + password);
		//로그인 성공시에는 호스트의 홈페이지로 이동시켜준다.
		return "redirect:home.hdo";
	}
}
