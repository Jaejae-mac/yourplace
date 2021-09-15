package com.yourplace.admin.memberview.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter
@Setter
public class MemberVO {
	
	private int userNum;
	private String userType; //0: 유저 1: 호스트 / default: 0
	private String userName;
	private String userId;
	private String userTel;
	private String userEmail;
	private String userSex;
	private Date userRegDate; // sql date 도 상관없음
	private String userSmsAgree;
	private String userEmailAgree;

}
