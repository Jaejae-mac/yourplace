package com.yourplace.custom.reserve.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.yourplace.custom.reserve.dao.ReserveDAO;
import com.yourplace.custom.reserve.vo.ReserveVO;

@Service
public class ReserveServiceImpl implements ReserveService{
	
	@Inject
	ReserveDAO dao;

	@Override
	public void insertReserv(ReserveVO vo) throws Exception {
		dao.insertReserv(vo);
		
	}

	@Override
	public List<ReserveVO> getAllReserve() throws Exception {
		return dao.getAllReserve();
	}

	@Override
	public List<ReserveVO> getReservedTime() throws Exception {
		return dao.getReservedTime();
	}
	
}
