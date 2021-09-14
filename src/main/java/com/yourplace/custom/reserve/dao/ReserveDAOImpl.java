package com.yourplace.custom.reserve.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.yourplace.custom.reserve.vo.ReserveVO;
@Repository
public class ReserveDAOImpl implements ReserveDAO {

	@Inject
	private SqlSession session;
	
	
	@Override
	public void insertReserv(ReserveVO vo) throws Exception {
		session.insert("ReserveMapper.insert", vo);
		

	}

	@Override
	public List<ReserveVO> getAllReserve() throws Exception {
		return session.selectList("ReserveMapper.getAll");
		
	}

	@Override
	public List<ReserveVO> getReservedTime() throws Exception {
		return session.selectList("ReserveMapper.getReservedTime");
	}

}
