package com.yourplace.host.reserv.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.yourplace.host.reserv.vo.HostReservVO;

@Repository
public class HostReservDAOImpl implements HostReservDAO{

	@Inject
	private SqlSession session;
	
	@Override
	public List<HostReservVO> getAllReserve() throws Exception {
		return session.selectList("HostReservMapper.getAllReserve");
	}

	@Override
	public void updatePlaceDetail() throws Exception {
		session.update("HostReservMapper.updatePlaceDetail");
		
	}

	@Override
	public List<HostReservVO> getReserveDate() throws Exception {
		return session.selectList("HostReservMapper.getReservDate");
	}

}
