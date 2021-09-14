package com.yourplace.custom.login.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.yourplace.custom.login.dao.LoginDAO;
import com.yourplace.custom.login.service.RegistService;
import com.yourplace.custom.login.vo.UserVO;

@Service("registService")
public class RegistServiceImpl implements RegistService {

	@Autowired
	private LoginDAO loginDAO;

	// 스프링 security비밀번호 암호화 및 비밀번호 대조.
	@Autowired
	private BCryptPasswordEncoder passEncoder;
	// passEncoder.encode(암호화할 비밀번호.)
	// if(passEncoder.matches(입력받은 비밀번호 ,암호화된 비밀번호) 로 비밀번호 비교 가능.

	@Override
	public void insertUser(UserVO vo) {
		//아이디에 앞뒤 공백 혹은 대문자가 있을경우 소문자로변환.
		String id = vo.getUserId().toLowerCase();
		id = id.trim();
		vo.setUserId(id);
		// 패스워드 암호화 과정.
		String password = vo.getUserPw();
		String encodePw = passEncoder.encode(password);
		vo.setUserPw(encodePw);
		
		loginDAO.regist(vo);
	}

}
