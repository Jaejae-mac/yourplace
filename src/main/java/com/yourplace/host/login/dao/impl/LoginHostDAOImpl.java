package com.yourplace.host.login.dao.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yourplace.host.login.dao.LoginHostDAO;
import com.yourplace.host.login.vo.HostVO;

@Repository("loginHostDAO")
public class LoginHostDAOImpl implements LoginHostDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	@Override
	public HostVO getHost(HostVO vo) {
		System.out.println("---> MyBatis로 getBoard() 기능 처리");
		return (HostVO) sqlSessionTemplate.selectOne("HostDAO.getHost", vo);
	}

}
