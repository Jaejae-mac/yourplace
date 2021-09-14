package com.yourplace.custom.login.service;

import com.yourplace.custom.login.vo.UserVO;

public interface ResetPasswordService {
	String idAndEmailCheck(UserVO vo);
	void updatePassword(UserVO vo);
}
