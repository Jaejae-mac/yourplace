package com.yourplace.admin.memberview.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yourplace.admin.memberview.vo.MemberVO;

@Repository("memDAO")
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<MemberVO> getMemberList() {
		System.out.println("---> MyBatis로 getMember 기능 처리: 전체 회원 조회1");
		return sqlSessionTemplate.selectList("MemberDAO.getMemberList");
	}

//	@Override
//	public List<MemberVO> getMemberListTwo(MemberVO vo) {
//		System.out.println("---> MyBatis로 getMember 기능 처리: 전체 회원 조회2");
//		return sqlSessionTemplate.selectList("MemberDAO.getMemberList", vo);
//	}

	@Override
	public void deleteMember(String deleteUserId) {
		System.out.println("---> MyBatis로 deleteMember() 기능 처리: 회원 삭제");
		sqlSessionTemplate.delete("MemberDAO.deleteMember", deleteUserId);
		System.out.println("[MemberDAO] delete 정상 수행");
	}
	
}
