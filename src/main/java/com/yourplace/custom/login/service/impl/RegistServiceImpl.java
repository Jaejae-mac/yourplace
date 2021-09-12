package com.yourplace.custom.login.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yourplace.custom.login.dao.LoginDAO;
import com.yourplace.custom.login.service.RegistService;
import com.yourplace.custom.login.vo.UserVO;

@Service("registService")
public class RegistServiceImpl implements RegistService {

	@Autowired
	private LoginDAO loginDAO;
	
	@Override
	public void insertUser(UserVO vo) {
		loginDAO.regist(vo);
	}

}
