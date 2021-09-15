package com.yourplace.admin.login.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yourplace.admin.login.dao.AdminDAO;
import com.yourplace.admin.login.vo.AdminVO;

@Service("idckService")
public class IdCheckServiceImpl implements IdCheckService {

	@Autowired
	private AdminDAO adminDAO;
	
	@Override
	public String idCheck(AdminVO vo) {
		
		System.out.println("idCheck Service Impl");
		AdminVO result = adminDAO.getAdmin(vo);
		
		if(result != null) {
			System.out.println("중복된 아이디입니다.");
			return "NO";
			
		}else {
			System.out.println("사용가능한 아이디입니다.");
			return "YES";
			
		}
	}

}
