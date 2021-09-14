package com.yourplace.custom.login.service.impl;

import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yourplace.custom.login.dao.LoginDAO;
import com.yourplace.custom.login.service.ResetPasswordService;
import com.yourplace.custom.login.vo.UserVO;

@Service("resetPasswordService")
public class ResetPasswordServiceImpl implements ResetPasswordService {
	@Autowired
	private LoginDAO loginDAO;
	@Override
	public String idAndEmailCheck(UserVO vo) {
		UserVO result = loginDAO.idAndEmailCheck(vo);
		if(result == null) {
			return "0";//존재하지 않는다 = 0
		}else {
			return "1";	//존재한다 = 1
		}
	}
	//비밀번호 업데이트.
	@Override
	public void updatePassword(UserVO vo) {
		loginDAO.updatePw(vo);
	}
	//비밀번호 폼이 호출되면 실행되어야 할 서비스 메서드.
	//비밀번호 변경창 전에 아이디, 이메일을 입력하면, 임시 토큰을 발행.
	//이메일에 전송할 링크뷰에 같이 담아 보낸다.
	@Override
	public String setAccessNum() {
		System.out.println("[Service] 토큰 생성및 저장 수행.");
		Random random = new Random();
		String tokenNum = "";
		for(int i = 0 ; i < 6; i++) {
			String randNum = Integer.toString(random.nextInt(10));
			tokenNum += randNum;
		}
		loginDAO.setAccessNum(tokenNum);
		return tokenNum;
	}
	//DB에 저장된 임시번호를 조회하여 가져올 서비스 메서드.
	@Override
	public String getAccessNum(String tokenNum) {
		System.out.println("[Service] 토큰 조회 수행.");
		int result = loginDAO.getAccessNum(tokenNum);
		//조회된 행이 있다면.
		if(result == 1) {
			//DB의 해당 토큰 행을 삭제하고.
			System.out.println("존재하는 토큰입니다.");
			//존재하는토큰으로 접근했기 때문에 링크의 유효성을 위해 삭제.
			deleteAccessNum(tokenNum);
			return "1";
		}else {
			System.out.println("존재하지 않는 토큰입니다.");
			return "0";
		}
		
	}
	@Override
	public void deleteAccessNum(String tokenNum) {
		System.out.println("[Service] 토큰 삭제 수행.");
		loginDAO.deleteAccessNum(tokenNum);
		
	}

}
