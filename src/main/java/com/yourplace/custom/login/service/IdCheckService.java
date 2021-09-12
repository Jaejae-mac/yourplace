package com.yourplace.custom.login.service;

import com.yourplace.custom.login.vo.UserVO;

public interface IdCheckService {
	//select user_id from table where user_id = ?
	String idCheck(UserVO vo);
}
