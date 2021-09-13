package com.yourplace.custom.login.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yourplace.custom.login.dao.LoginDAO;
import com.yourplace.custom.login.service.KakaoUserService;
import com.yourplace.custom.login.vo.UserVO;

@Service("kakaoUserService")
public class KakaoUserServiceImpl implements KakaoUserService{
	@Autowired
	private LoginDAO loginDAO;
	
	@Override
	public UserVO getKakao(UserVO vo) {
		UserVO kakao = loginDAO.getKakao(vo);
		//카카오 정보가 DB에 없다는 것이므로, 회원가입 창으로 보내줘야한다.
		//회원정보가 있기 때문에 회원정보를 리턴
		return kakao;
		
	}
}
