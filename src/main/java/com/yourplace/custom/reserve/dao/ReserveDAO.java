package com.yourplace.custom.reserve.dao;

import java.util.List;

import com.yourplace.custom.reserve.vo.ReserveVO;

public interface ReserveDAO {
	void insertReserv(ReserveVO vo) throws Exception;
	List<ReserveVO> getAllReserve() throws Exception;
	List<ReserveVO> getReservedTime() throws Exception; //½Ã°£
	
}
