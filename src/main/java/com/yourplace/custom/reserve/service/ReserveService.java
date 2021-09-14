package com.yourplace.custom.reserve.service;

import java.util.List;

import com.yourplace.custom.reserve.vo.ReserveVO;

public interface ReserveService {
	void insertReserv(ReserveVO vo) throws Exception;
	List<ReserveVO> getAllReserve() throws Exception;
	List<ReserveVO> getReservedTime() throws Exception; //½Ã°£
}
