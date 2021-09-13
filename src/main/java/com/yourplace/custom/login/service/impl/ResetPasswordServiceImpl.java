package com.yourplace.custom.login.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yourplace.custom.login.dao.LoginDAO;
import com.yourplace.custom.login.service.ResetPasswordService;
import com.yourplace.custom.login.vo.UserVO;

@Service("resetPasswordService")
public class ResetPasswordServiceImpl implements ResetPasswordService {
	@Autowired
	private LoginDAO loginDAO;
	@Override
	public String idAndEmailCheck(UserVO vo) {
		UserVO result = loginDAO.idCheck(vo);
		if(result == null) {
			return "0";//존재하지 않는다 = 0
		}else {
			return "1";	//존재한다 = 1
		}
	}
	//비밀번호 업데이트.
	@Override
	public void updatePassword(UserVO vo) {
		loginDAO.updatePw(vo);
	}

}
