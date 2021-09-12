package com.yourplace.admin.login.vo;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class AdminVO {
	private int adminNum;
	private String adminId;
	private String adminPw;
	private String adminEmail;
	private String adminName;
	private String adminTel;
	private Date adminRegDate;
}
