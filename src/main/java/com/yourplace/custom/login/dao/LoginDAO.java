package com.yourplace.custom.login.dao;

import com.yourplace.custom.login.vo.UserVO;

public interface LoginDAO {
	UserVO idCheck(UserVO vo);
	//회원가입 관련 함수.
	void regist(UserVO vo);
	//로그인 처리를 위해 유저의정보를 얻어올 메서드
	UserVO getUser(UserVO vo);
	//카카오 회원가입을 진행한 적이 있는지 여부 판단.
	UserVO getKakao(UserVO vo);
	
	UserVO getIdEmail(UserVO vo);
	
	void updatePw(UserVO vo);
	
	UserVO getAccount(UserVO vo);
}
