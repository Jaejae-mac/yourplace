package com.yourplace.custom.login.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.yourplace.custom.login.dao.LoginDAO;
import com.yourplace.custom.login.service.LoginUserService;
import com.yourplace.custom.login.vo.UserVO;

@Service("loginUserService")
public class LoginUserServiceImpl implements LoginUserService {
	@Autowired
	private LoginDAO loginDAO;
	
	// 스프링 security비밀번호 암호화 및 비밀번호 대조.
	@Autowired
	private BCryptPasswordEncoder passEncoder;
	// passEncoder.encode(암호화할 비밀번호.)
	// if(passEncoder.matches(입력받은 비밀번호 ,암호화된 비밀번호) 로 비밀번호 비교 가능.
	
	@Override
	public int getUser(UserVO vo) {
		UserVO uvo = loginDAO.getUser(vo);
		// 아이디를 조건으로 DB select 시도 후 , 리턴받은 값이 Null 이 아니라면.
		if (uvo != null) {
			// 리턴받은 객체의 비밀번호와 매개로 전달받은 객체의 비밀번호를 비교하여 같다면.
			if (passEncoder.matches(vo.getUserPw(), uvo.getUserPw())) {
				// 1을 리턴해주겠다. 
				return 1;
			}else {
				//비밀번호가 서로 다르다면 0을 리턴해주겠다.
				return 0;
			}
		} else {
			//아이디가 존재하지 않는 유저이면 0을 리턴해주겠다.
			return 0;
		}
	}

}
