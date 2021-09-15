package com.yourplace.admin.memberview.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yourplace.admin.memberview.dao.MemberDAO;
import com.yourplace.admin.memberview.vo.MemberVO;

@Service("memList")
public class MemberListServiceImpl implements MemberListService {

	@Autowired
	private MemberDAO memDAO;
	
	@Override
	public List<MemberVO> getMemberList() {
		List<MemberVO> memberVO = memDAO.getMemberList();
		return memberVO;
	}

//	@Override
//	public List<MemberVO> getMemberListTwo(MemberVO memVO) {
//		
//		System.out.println("MemberService2");
//		List<MemberVO> memberVO = memDAO.getMemberListTwo(memVO);
//		
//		System.out.println("[Service] List toString ----------> ");
//		System.out.println(memberVO.toString());
//		
//		return memberVO;
//	}

}
