package com.kh.blood.booking.store.logic;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kh.blood.booking.domain.Place;
import com.kh.blood.booking.domain.Search;
import com.kh.blood.booking.store.PlaceStore;

@Repository
public class PlaceStoreLogic implements PlaceStore{

	/* 헌혈의집 목록 조회 StoreLogic */
	@Override
	public List<Place> selectPlaceList(SqlSession session, Search search) {
		List<Place> pList = session.selectList("BookMapper.selectPlaceList", search);
		return pList;
	}
	// (헌혈의집) '시' 목록 조회 StoreLogic
	@Override
	public List<String> selectSiList(SqlSession session) {
		List<String> siList = session.selectList("BookMapper.selectSiList");
		return siList;
	}
	// (헌혈의집) '군/구' 목록 조회 StoreLogic
	@Override
	public List<String> selectGunguList(SqlSession session, String searchArea) {
		List<String> gunguList = session.selectList("BookMapper.selectGunGuList", searchArea);
		return gunguList;
	}
	
	/* 헌혈의집 검색 StoreLogic */
	@Override
	public List<Place> selectListByKeyword(SqlSession session, Search search) {
		List<Place> searchResult = session.selectList("BookMapper.selectListByKeyword", search);
		return searchResult;
	}

	
}
