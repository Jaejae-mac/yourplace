package com.yourplace.custom.reserve.vo;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class ReserveVO {
	private int placeNum;
	private String rsvName;
	private String rsvId;
	private int rsvYear;
	private int rsvMonth;
	private int rsvDate;
	private int rsvStartT;
	private int rsvEndTime;
	private String rsvPurpose;
	private String rsvRequest;
	private String rsvRefundYN;
	private String rsvRefundReason;
	private int rsvPay;
	private String rsvPayMthd;
	private int payYear;
	private int payMonth;
	private int payDate;
	private String payNum;
	private String payCoupYN;
	private String payCoupNum;

	
}


