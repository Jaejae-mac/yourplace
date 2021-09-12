package com.yourplace.custom.login.dao.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yourplace.custom.login.dao.LoginDAO;
import com.yourplace.custom.login.vo.UserVO;


@Repository("loginDAO")
public class LoginDAOImpl implements LoginDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public UserVO idCheck(UserVO vo) {
		System.out.println("[MyBatis] Id Check Func is Called");
		return (UserVO) sqlSessionTemplate.selectOne("UserDAO.getUserId", vo);
	}

	@Override
	public void regist(UserVO vo) {
		sqlSessionTemplate.insert("UserDAO.insertUser",vo);
	}

}
