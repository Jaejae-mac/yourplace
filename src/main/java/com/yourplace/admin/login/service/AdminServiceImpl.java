package com.yourplace.admin.login.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.yourplace.admin.login.dao.AdminDAO;
import com.yourplace.admin.login.vo.AdminVO;

@Service("adminService")
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private AdminDAO adminDAO;
	
	@Override
	public AdminVO getAdmin(AdminVO vo) {
		AdminVO admin = adminDAO.getAdmin(vo);
		System.out.println("admin : " + admin.toString());
		return admin;
	}

}
