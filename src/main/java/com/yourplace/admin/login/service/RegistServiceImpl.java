package com.yourplace.admin.login.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.yourplace.admin.login.dao.AdminDAO;
import com.yourplace.admin.login.vo.AdminVO;

@Service("regService")
public class RegistServiceImpl implements RegistService {

	@Autowired
	private AdminDAO adminDAO;
	
	@Override
	public void insertAdmin(AdminVO vo) {
		System.out.println("Service 입력된 값: " + vo.toString());
		adminDAO.insertAdmin(vo);
		
	}

}
