package com.kh.blood.booking.service;

import java.util.List;

import com.kh.blood.booking.domain.Place;

public interface PlaceService {

	/**
	 * 헌혈의집 목록 조회 Service
	 * @return List<Place>
	 */
	public List<Place> selectPlaceList();

}
