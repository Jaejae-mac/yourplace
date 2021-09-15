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

	// 유저 아이디존재여부 확인하기.

	@Override
	public UserVO idCheck(UserVO vo) {
		System.out.println("[MyBatis] Id Check Func is Called");
		return (UserVO) sqlSessionTemplate.selectOne("UserDAO.getUserId", vo);
	}


	// 유저 아이디 이메일 존재여부 확인하기.
	@Override
	public UserVO idAndEmailCheck(UserVO vo) {
		System.out.println("[MyBatis] 아이디, 이메일 동시조회 호출.");
		return sqlSessionTemplate.selectOne("UserDAO.getIdAndEmail", vo);
	}

	// 회원가입 유저 정보 삽입하기.

	@Override
	public void regist(UserVO vo) {
		sqlSessionTemplate.insert("UserDAO.insertUser", vo);
	}

	// 로그인용 유저정보 얻어오기.
	@Override
	public UserVO getUser(UserVO vo) {
		return (UserVO) sqlSessionTemplate.selectOne("UserDAO.getUser", vo);
	}

	// 카카오 회원 가입여부 판단.
	// 카카오 아이디 값으로 판단하고 있으면 통과 없으면 회원가입 창으로 이동시킨다.
	@Override
	public UserVO getKakao(UserVO vo) {
		return (UserVO) sqlSessionTemplate.selectOne("UserDAO.getKakao", vo);
	}

	// 비밀번호 재설정 시
	// 아이디와 이메일이 가입때 사용한 이메일이라면,
	// 을 검증하기 위한 메서드.
	@Override
	public UserVO getIdEmail(UserVO vo) {
		System.out.println("[MyBatis] 유저 아이디와 비밀번호 SELECT 수행");
		return (UserVO) sqlSessionTemplate.selectOne("UserDAO.getResetPw", vo);
	}

	@Override
	public void updatePw(UserVO vo) {
		System.out.println("[MyBatis] 유저 비밀번호 갱신 수행");
		sqlSessionTemplate.update("UserDAO.updatePassword", vo);
	}

	@Override
	public UserVO getAccount(UserVO vo) {
		System.out.println("[MyBatis] 유저 아이디 얻어오기 수행");
		return (UserVO) sqlSessionTemplate.selectOne("UserDAO.getAccount", vo);
	}

	// 비밀번호 재설정 링크에 토큰을 부여할 서비스.
	@Override
	public void setAccessNum(String tokenNum) {
		System.out.println("[MyBatis] 토큰 INSERT 수행");
		sqlSessionTemplate.insert("AccessNum.setAccessNum", tokenNum);

	}

	// 비밀번호 재설정 링크의 토큰을 조회하여 조회결과를 리턴해줄 메서드.
	@Override
	public int getAccessNum(String tokenNum) {
		System.out.println("[MyBatis] 토큰 SELECT 수행");
		return (int) sqlSessionTemplate.selectOne("AccessNum.getAccessNum", tokenNum);
	}

	// 조회된 토큰이 있을 경우 삭제할 메서드.
	@Override
	public void deleteAccessNum(String tokenNum) {
		System.out.println("[MyBatis] 토큰 DELETE 수행");
		sqlSessionTemplate.delete("AccessNum.deleteAccessNum", tokenNum);
	}

}
