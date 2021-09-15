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
	
	//로그인 폼을 호출해주는 컨트롤러.
	@GetMapping("/loginForm.do")
	public String loginForm() {
		System.out.println("[ 로그인 폼 호출 ]");
		return "login/loginForm";
	}
	
	//로그인 처리를 해주는 컨트롤러.


	@PostMapping("/login.do")
	public String login(UserVO vo, HttpServletRequest request, Model model) {
		int result = loginUserService.getUser(vo);
		if (result == 1) {
			// 로그인 성공시에는세션을 생성해준다.
			HttpSession session = request.getSession();
			// 세션의 키로 userId 를 주고 세션의 값으로 유저의 아이디를 준다.
			session.setAttribute("userId", vo.getUserId());
			System.out.println(vo.getUserType());
			session.setAttribute("userType", String.valueOf(vo.getUserType()));
			session.setAttribute("userNum", vo.getUserNum());
			// 로그인 성공시에는 호스트의 홈페이지로 이동시켜준다.
			return "redirect:home.do";
		}
		model.addAttribute("result", "0");
		return "redirect:loginForm.do";
	}

	//카카오 로그인을 처리해주는 컨트롤러.
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
			//회원가입 폼에 카카오 에서 동의체크된 항목들을 가져와야 하기 때문에, 
			//객체에 실어서 보내줘야 한다.


			model.addAttribute("kakaoId", request.getParameter("kakaoid"));
			model.addAttribute("kakaoEmail", request.getParameter("kakaoemail"));
			model.addAttribute("kakaoName", request.getParameter("kakaoname"));
			return "login/registerForm";
		} else {// 카카오 로그인 을 클릭하여 회원가입도 진행 후 로그인한 적이 있다면 메인으로 이동.
				// 로그인 성공시에는세션을 생성해준다.
			HttpSession session = request.getSession();
			// 세션의 키로 userId 를 주고 세션의 값으로 유저의 아이디를 준다.
			session.setAttribute("userId", kakao.getUserId());
			session.setAttribute("userType", kakao.getUserType());
			session.setAttribute("userNum", kakao.getUserNum());
			session.setAttribute("userId", vo.getUserId());

			// 로그인 성공시에는 호스트의 홈페이지로 이동시켜준다.
			return "index";

		}

	}
	
	//로그아웃 컨트롤러.
	@GetMapping("/logout.do")
	public String logout(HttpServletRequest request) {
		//로그아웃시 현존하는 유저와 관련된 세션을 모두 삭제해 주어야 하기 때문에 invalidate 해준다.
		HttpSession session = request.getSession();
		System.out.println(session.getAttribute("userId") +"님이 로그아웃 되었습니다.");
		session.invalidate();
		return "redirect:home.do";
	}
}
