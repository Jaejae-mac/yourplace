package com.yourplace.host.login.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yourplace.host.login.dao.LoginHostDAO;
import com.yourplace.host.login.service.LoginGetHostService;
import com.yourplace.host.login.vo.HostVO;

@Service("loginGetHostService")
public class LoginGetHostServiceImpl implements LoginGetHostService {
	@Autowired
	private LoginHostDAO loginHostDAO;

	@Override
	public int getHost(HostVO vo) {
		HostVO hvo = loginHostDAO.getHost(vo);
		//아이디를 조건으로 DB select 시도 후 , 리턴받은 값이 Null 이 아니라면.
		if (hvo != null) {
			//리턴받은 객체의 비밀번호와 매개로 전달받은 객체의 비밀번호를 비교하여 같다면.
			if (hvo.getUserPw().equals(vo.getUserPw())) {
				//1을 리턴해주겠다. : 
				return 1;
			}
		} else {
			return 0;
		}
		return 0;
	}

}
