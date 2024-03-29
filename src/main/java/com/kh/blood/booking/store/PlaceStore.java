package com.kh.blood.booking.store;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.kh.blood.booking.domain.Place;
import com.kh.blood.booking.domain.Search;

public interface PlaceStore {

	/**
	 * 헌혈의집 목록 조회 Store
	 * @param session
	 * @param search 
	 * @return List<Place>
	 */
	List<Place> selectPlaceList(SqlSession session, Search search);
	/**
	 * (헌혈의집) '시' 목록 조회 Store
	 * @param session
	 * @return List<String>
	 */
	List<String> selectSiList(SqlSession session);
	/**
	 * (헌혈의집) '군/구' 목록 조회 Store
	 * @param session
	 * @param searchArea 
	 * @return List<String>
	 */
	List<String> selectGunguList(SqlSession session, String searchArea);
	
	
	/**
	 * 헌혈의집 검색 Store
	 * @param session 
	 * @param search
	 * @return List<Place>
	 */
	List<Place> selectListByKeyword(SqlSession session, Search search);

}
