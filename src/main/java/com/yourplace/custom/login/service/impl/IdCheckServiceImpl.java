package com.yourplace.custom.login.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yourplace.custom.login.dao.LoginDAO;
import com.yourplace.custom.login.service.IdCheckService;
import com.yourplace.custom.login.vo.UserVO;

@Service("idCheckServiceImpl")
public class IdCheckServiceImpl implements IdCheckService {
	@Autowired
	private LoginDAO loginDAO;
	@Override
	public String idCheck(UserVO vo) {
		UserVO result = loginDAO.idCheck(vo);
		if(result == null) {
			return "0";//존재하지 않는다 = 0
		}else {
			return "1";	//존재한다 = 1
		}
	}

}
