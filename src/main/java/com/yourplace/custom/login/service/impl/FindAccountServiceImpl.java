package com.yourplace.custom.login.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yourplace.custom.login.dao.LoginDAO;
import com.yourplace.custom.login.service.FindAccountService;
import com.yourplace.custom.login.vo.UserVO;

//1. 해당 전화번호를 가지는 사용자가 존재하는 지 확인한다.
//2. 해당 전화번호를 가지는 사용자가 있다면, 아이디와 가입날짜를 가져온다.
//3. 등록된 전화번호가 없다면 가입이력이 없는 사용자라는 메세지를 출력한다.
@Service("findAccountService")
public class FindAccountServiceImpl implements FindAccountService{
	@Autowired
	private LoginDAO loginDAO;
	
	@Override
	public UserVO getAccount(UserVO vo) {
		return loginDAO.getAccount(vo);
	}

}
