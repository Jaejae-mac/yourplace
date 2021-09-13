package com.yourplace.custom.login.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.yourplace.custom.login.service.KakaoUserService;
import com.yourplace.custom.login.service.LoginUserService;
import com.yourplace.custom.login.vo.UserVO;

@Controller
public class LoginController {
	@Autowired
	private LoginUserService loginUserService;
	@Autowired
	private KakaoUserService KakaoUserService;

	@GetMapping("/loginForm.do")
	public String loginForm() {
		System.out.println("[ 로그인 폼 호출 ]");
		return "login/loginForm";
	}

	@PostMapping("/login.do")
	public String login(UserVO vo, HttpServletRequest request, Model model) {
		int result = loginUserService.getUser(vo);
		if (result == 1) {
			// 로그인 성공시에는세션을 생성해준다.
			HttpSession session = request.getSession();
			// 세션의 키로 userId 를 주고 세션의 값으로 유저의 아이디를 준다.
			session.setAttribute("userId", vo.getUserId());
			// 로그인 성공시에는 호스트의 홈페이지로 이동시켜준다.
			return "redirect:home.do";
		}
		model.addAttribute("result", "0");
		return "redirect:loginForm.do";
	}

	@PostMapping("/kakao/login.do")
	public String loginKakao(HttpServletRequest request, Model model) {
		System.out.println("[ 카카오 로그인 ]");
		System.out.println(request.getParameter("kakaoid"));
		System.out.println(request.getParameter("kakaoemail"));
		System.out.println(request.getParameter("kakaoname"));
		String kakaoId = request.getParameter("kakaoid");
		UserVO vo = new UserVO();
		vo.setKakaoId(kakaoId);
		UserVO kakao = KakaoUserService.getKakao(vo);
		if (kakao == null) {// 가입한적이 없다면 가입하도록 회원가입창으로 유도.
			model.addAttribute("kakaoId", request.getParameter("kakaoid"));
			model.addAttribute("kakaoEmail", request.getParameter("kakaoemail"));
			model.addAttribute("kakaoName", request.getParameter("kakaoname"));
			return "login/registerForm";
		} else {// 카카오 로그인 을 클릭하여 회원가입도 진행 후 로그인한 적이 있다면 메인으로 이동.
				// 로그인 성공시에는세션을 생성해준다.
			HttpSession session = request.getSession();
			// 세션의 키로 userId 를 주고 세션의 값으로 유저의 아이디를 준다.
			session.setAttribute("userId", vo.getUserId());
			// 로그인 성공시에는 호스트의 홈페이지로 이동시켜준다.
			return "index";

		}

	}

}
