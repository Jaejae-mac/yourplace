package com.yourplace.admin.login.controller;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yourplace.admin.login.dao.AdminDAO;
import com.yourplace.admin.login.service.AdminService;
import com.yourplace.admin.login.service.IdCheckService;
import com.yourplace.admin.login.service.RegistService;
import com.yourplace.admin.login.vo.AdminVO;


@Controller
public class RegisterController {
	
	@Autowired
	private RegistService regService;

	@Autowired
	private BCryptPasswordEncoder passEncoder;
	
	@Autowired
	private IdCheckService idckService;
	
	//회원가입 요청오면 받아주기
	@GetMapping(value = "/register.mdo")
	public String registerForm()
	{
		return "register";
	}
	
	//아이디 체크
	@PostMapping("/idcheck.mdo")
	@ResponseBody
	public String idCheck(String id)
	{
		System.out.println("AJAX id check");
		AdminVO vo = new AdminVO();
		vo.setAdminId(id);
		String result = idckService.idCheck(vo);
		return result;
	}
	
	//실제 회원가입 페이지 열람
	@PostMapping("/register.mdo")
	public String register(AdminVO adminVO)
	{
		System.out.println("Admin 회원추가 method 실행");
		System.out.println("---------- 추가되는 회원정보 ----------");
		System.out.println(adminVO.toString());
		System.out.println("----------------------------------");
		
		//password encoder
		String password = adminVO.getAdminPw();
		String encodePw = passEncoder.encode(password);
		adminVO.setAdminPw(encodePw);
		
		//Service를 통해 받아온 정보값을 등록
		regService.insertAdmin(adminVO);
		
		//회원가입 완료되면 login 페이지로 다시 이동
		return "login";
	}

}
