package com.yourplace.host.login.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;

import com.yourplace.host.login.service.LoginGetHostService;
import com.yourplace.host.login.vo.HostVO;

@Controller
public class LoginController {
	@Autowired
	private LoginGetHostService loginGetHostService;
	@PostMapping("/login.hdo")
	public String login(HostVO vo, Model model, HttpServletRequest request) {
		int result = loginGetHostService.getHost(vo);
		if(result == 1) {
			//로그인 성공시에는세션을 생성해준다.
			HttpSession session = request.getSession();
			//세션의 키로 userId 를 주고 세션의 값으로 유저의 아이디를 준다.
			session.setAttribute("userId", vo.getUserId());
			//로그인 성공시에는 호스트의 홈페이지로 이동시켜준다.
			return "redirect:home.hdo";
		}
		model.addAttribute("result", "0");
		return "redirect:loginForm.do";
		
	}
}
