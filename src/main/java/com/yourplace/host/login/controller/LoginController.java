package com.yourplace.host.login.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import com.yourplace.host.login.service.LoginGetHostService;
import com.yourplace.host.login.vo.HostVO;

@Controller
public class LoginController {
	@Autowired
	private LoginGetHostService loginGetHostService;
	@PostMapping("/login.hdo")
	public String login(HttpServletRequest request, HostVO vo) {
		String id = request.getParameter("userId");
		String password = request.getParameter("userPw");
		System.out.println(id + "   " + password);
		loginGetHostService.getHost(vo);
		//로그인 성공시에는 호스트의 홈페이지로 이동시켜준다.
		return "redirect:home.hdo";
	}
}
