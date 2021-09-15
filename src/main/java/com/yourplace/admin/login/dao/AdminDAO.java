package com.yourplace.admin.login.dao;

import com.yourplace.admin.login.vo.AdminVO;

public interface AdminDAO {
	
	//id 얻어오기
	AdminVO getAdmin(AdminVO vo);
	
	//회원가입
	void insertAdmin(AdminVO vo);
	
	//AdminVO idCheck(AdminVO vo);
	
}
