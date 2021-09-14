package com.yourplace.custom.login.service;

import com.yourplace.custom.login.vo.UserVO;

public interface FindAccountService {
	//1. 해당 전화번호를 가지는 사용자가 존재하는 지 확인한다.
	//2. 해당 전화번호를 가지는 사용자가 있다면, 아이디와 가입날짜를 가져온다.
	//3. 등록된 전화번호가 없다면 가입이력이 없는 사용자라는 메세지를 출력한다.
	public UserVO getAccount(UserVO vo);
}
