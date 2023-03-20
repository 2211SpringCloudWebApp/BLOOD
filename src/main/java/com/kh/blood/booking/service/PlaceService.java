package com.kh.blood.booking.service;

import java.util.List;

import com.kh.blood.booking.domain.Place;
import com.kh.blood.booking.domain.Search;

public interface PlaceService {

	/**
	 * 헌혈의집 목록 조회 Service
	 * @param search 
	 * @return List<Place>
	 */
	public List<Place> selectPlaceList(Search search);
	/**
	 * (헌혈의집) '시' 목록 조회 Service
	 * @return List<String>
	 */
	public List<String> selectSiList();
	/**
	 * (헌혈의집) '군/구' 목록 조회 Service
	 * @param searchArea 
	 * @return List<String>
	 */
	public List<String> selectGunguList(String searchArea);
	
	/**
	 * 헌혈의집 검색
	 * @param search
	 * @return List<Place>
	 */
	public List<Place> selectListByKeyowrd(Search search);

}
