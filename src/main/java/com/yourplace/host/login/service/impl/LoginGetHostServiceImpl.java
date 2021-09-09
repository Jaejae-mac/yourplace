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
	public HostVO getHost(HostVO vo) {
		HostVO hvo = loginHostDAO.getHost(vo);
		System.out.println("[Get Host Service] "  + hvo.toString());
		return null;
	}

}
