package com.yourplace.host.reserv.service;

import java.util.List;

import com.yourplace.host.reserv.vo.HostReservVO;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.yourplace.host.reserv.dao.HostReservDAO;
import com.yourplace.host.reserv.vo.HostReservVO;

@Service
public class HostReservServiceImpl implements HostReservService{

	@Inject
	HostReservDAO dao;

	@Override
	public List<HostReservVO> getAllReserve() throws Exception {
		return dao.getAllReserve();
	}

	@Override
	public void updatePlaceDetail() throws Exception {
		dao.updatePlaceDetail();
		
	}

	@Override
	public List<HostReservVO> getReserveDate() throws Exception {
		return dao.getReserveDate();
	}
}
