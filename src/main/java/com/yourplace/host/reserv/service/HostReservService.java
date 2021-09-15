package com.yourplace.host.reserv.service;

import java.util.List;

import com.yourplace.host.reserv.vo.HostReservVO;

public interface HostReservService {
	List<HostReservVO> getAllReserve() throws Exception;
	void updatePlaceDetail() throws Exception;
	List<HostReservVO> getReserveDate() throws Exception;
}
