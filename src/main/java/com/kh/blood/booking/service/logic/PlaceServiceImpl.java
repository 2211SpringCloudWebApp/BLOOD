package com.kh.blood.booking.service.logic;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.kh.blood.booking.domain.Place;
import com.kh.blood.booking.service.PlaceService;
import com.kh.blood.booking.store.PlaceStore;

public class PlaceServiceImpl implements PlaceService{
	
	@Autowired
	private PlaceStore pStore;
	@Autowired
	private SqlSession session;

	/* 헌혈의집 목록 조회 ServiceImpl */
	@Override
	public List<Place> selectPlaceList() {
		List<Place> pList = pStore.selectPlaceList(session);
		return pList;
	}

}
