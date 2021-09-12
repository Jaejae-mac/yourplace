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
	
	//유저 아이디존재여부 확인하기.
	@Override
	public UserVO idCheck(UserVO vo) {
		System.out.println("[MyBatis] Id Check Func is Called");
		return (UserVO) sqlSessionTemplate.selectOne("UserDAO.getUserId", vo);
	}

	//회원가입 유저 정보 삽입하기.
	@Override
	public void regist(UserVO vo) {
		sqlSessionTemplate.insert("UserDAO.insertUser",vo);
	}

	//로그인용 유저정보 얻어오기.
	@Override
	public UserVO getUser(UserVO vo) {
		return (UserVO) sqlSessionTemplate.selectOne("UserDAO.getUser", vo);
	}

}
