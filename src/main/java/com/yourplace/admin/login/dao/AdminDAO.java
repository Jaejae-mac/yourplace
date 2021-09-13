package com.yourplace.admin.login.dao;

import com.yourplace.admin.login.vo.AdminVO;

public interface AdminDAO {
	
	AdminVO getAdmin(AdminVO vo);
	void insertAdmin(AdminVO vo);
	//AdminVO idCheck(AdminVO vo);
	
}
