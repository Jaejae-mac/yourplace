package com.yourplace.admin.login.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yourplace.admin.login.service.AdminService;
import com.yourplace.admin.login.vo.AdminVO;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	@RequestMapping("/test.mdo")
	public void test() {
		AdminVO vo = new AdminVO();
		vo.setAno(1);
		vo.setTestId("testAdmin1");
		vo.setTestName("git testing");
		AdminVO admin = adminService.getAdmin(vo);
		System.out.println(admin.toString());
	}
}
