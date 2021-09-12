package com.yourplace.custom.login.dao;

import com.yourplace.custom.login.vo.UserVO;

public interface LoginDAO {
	UserVO idCheck(UserVO vo);
	//회원가입 관련 함수.
	void regist(UserVO vo);
}
