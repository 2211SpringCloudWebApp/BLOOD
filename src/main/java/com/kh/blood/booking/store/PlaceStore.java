package com.kh.blood.booking.store;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.kh.blood.booking.domain.Place;

public interface PlaceStore {

	/**
	 * 헌혈의집 목록 조회 Store
	 * @param session
	 * @return
	 */
	List<Place> selectPlaceList(SqlSession session);

}
