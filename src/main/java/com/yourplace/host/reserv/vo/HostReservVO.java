package com.yourplace.host.reserv.vo;

import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Component
@Getter
@Setter
@ToString
public class HostReservVO {
	private String placeName;
	private String reserveNum;
	private String reserveName;
	private int reserveYear;
	private int reserveMonth;
	private int reserveDate;
	private int startTime;
	private int endTime;
	private int personNum;
	private int payPrice;
}
