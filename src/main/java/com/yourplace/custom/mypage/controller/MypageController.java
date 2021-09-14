package com.yourplace.custom.mypage.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yourplace.custom.login.service.MyPageService;
import com.yourplace.custom.login.vo.UserVO;

@Controller
public class MypageController {
	@Autowired
	private MyPageService mypageService;
	
	@RequestMapping("/mypage.do")
	public String mypageForm(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		String userId = (String)session.getAttribute("userId");
		System.out.println(userId);
		UserVO vo = new UserVO();
		vo.setUserId(userId);
		model.addAttribute("user", mypageService.getUser(vo));
		return "mypage/mypage";
	}
}
