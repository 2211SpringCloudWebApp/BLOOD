package com.kh.blood.booking.store.logic;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.kh.blood.booking.domain.Place;
import com.kh.blood.booking.store.PlaceStore;

public class PlaceStoreLogic implements PlaceStore{

	/* 헌혈의집 목록 조회 StoreLogic */
	@Override
	public List<Place> selectPlaceList(SqlSession session) {
		List<Place> pList = session.selectList("BookMapper.selectPlaceList");
		return pList;
	}

	
}
