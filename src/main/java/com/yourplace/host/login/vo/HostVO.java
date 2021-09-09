package com.yourplace.host.login.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class HostVO {
	private int userNum;
	private int userType;
	private String userName;
	private String userNickName;
	private String userId;
	private String userPw;
	private String userTel;
	private String userEmail;
	private String userSex;
	private String userProfileImg;
	private String userIntro;
	private Date userRegDate;
	private String userSmsAgree;
	private String userEmailAgree;
	
}
