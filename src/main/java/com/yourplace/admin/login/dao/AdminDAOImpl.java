package com.yourplace.admin.login.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yourplace.admin.login.vo.AdminVO;

@Repository("adminDAO")
public class AdminDAOImpl implements AdminDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public AdminVO getAdmin(AdminVO vo) {
		System.out.println("---> MyBatis로 getAdmin() 기능 처리");
		return (AdminVO) sqlSessionTemplate.selectOne("AdminDAO.getAdmin", vo);
	}

}
