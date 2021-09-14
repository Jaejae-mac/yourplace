package com.yourplace.host.login.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.yourplace.host.login.dao.LoginHostDAO;
import com.yourplace.host.login.service.LoginGetHostService;
import com.yourplace.host.login.vo.HostVO;

@Service("loginGetHostService")
public class LoginGetHostServiceImpl implements LoginGetHostService {
	@Autowired
	private LoginHostDAO loginHostDAO;
	// 스프링 security비밀번호 암호화 및 비밀번호 대조.
	@Autowired
	private BCryptPasswordEncoder passEncoder;
	// passEncoder.encode(암호화할 비밀번호.)
	// if(passEncoder.matches(입력받은 비밀번호 ,암호화된 비밀번호) 로 비밀번호 비교 가능.

	@Override
	public int getHost(HostVO vo) {
		HostVO hvo = loginHostDAO.getHost(vo);
		// 아이디를 조건으로 DB select 시도 후 , 리턴받은 값이 Null 이 아니라면.
		if (hvo != null) {
			// 리턴받은 객체의 비밀번호와 매개로 전달받은 객체의 비밀번호를 비교하여 같다면.
			if (passEncoder.matches(vo.getUserPw(), hvo.getUserPw())) {
				// 1을 리턴해주겠다. :
				return 1;
			} else {
				return 0;
			}
		} else {
			return 0;
		}
	}

}
