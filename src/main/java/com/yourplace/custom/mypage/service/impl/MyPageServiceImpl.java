package com.yourplace.custom.mypage.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yourplace.custom.login.dao.LoginDAO;
import com.yourplace.custom.login.vo.UserVO;
import com.yourplace.custom.mypage.service.MyPageService;

@Service("MyPageService")
public class MyPageServiceImpl implements MyPageService {
	
	@Autowired
	private LoginDAO dao;
	@Override
	public UserVO getUser(UserVO vo) {
		return dao.getUser(vo);
	}
}
