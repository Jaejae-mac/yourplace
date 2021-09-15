package com.yourplace.admin.memberview.dao;

import java.util.List;

import com.yourplace.admin.memberview.vo.MemberVO;

public interface MemberDAO {

	//회원 조회 (전체)
	List<MemberVO> getMemberList();
	
//	List<MemberVO> getMemberListTwo(MemberVO vo);
	
	//회원 삭제 (일부 또는 전체)
	void deleteMember(String deleteUserId);
	
}
