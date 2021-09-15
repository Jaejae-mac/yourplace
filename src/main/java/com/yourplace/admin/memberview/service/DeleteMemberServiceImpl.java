package com.yourplace.admin.memberview.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yourplace.admin.memberview.dao.MemberDAO;

@Service("memDelete")
public class DeleteMemberServiceImpl implements DeleteMemberService {

	@Autowired
	private MemberDAO memDAO;
	
	@Override
	public void deleteMember(String deleteUserId) {
		memDAO.deleteMember(deleteUserId);
	}
}
