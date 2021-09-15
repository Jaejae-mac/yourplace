package com.yourplace.host.reserv.dao;

import java.util.List;

import com.yourplace.host.reserv.vo.HostReservVO;

public interface HostReservDAO {
	List<HostReservVO> getAllReserve() throws Exception;
	void updatePlaceDetail() throws Exception;
	List<HostReservVO> getReserveDate() throws Exception;
}
