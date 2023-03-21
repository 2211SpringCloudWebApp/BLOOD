package com.kh.blood.booking.service.logic;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.blood.booking.domain.Place;
import com.kh.blood.booking.domain.Search;
import com.kh.blood.booking.service.PlaceService;
import com.kh.blood.booking.store.PlaceStore;

@Service
public class PlaceServiceImpl implements PlaceService{
	
	@Autowired
	private PlaceStore pStore;
	@Autowired
	private SqlSession session;

	/* 헌혈의집 목록 조회 ServiceImpl */
	@Override
	public List<Place> selectPlaceList(Search search) {
		List<Place> pList = pStore.selectPlaceList(session, search);
		return pList;
	}
	// (헌혈의집) '시' 목록 조회 ServiceImpl
	@Override
	public List<String> selectSiList() {
		List<String> siList = pStore.selectSiList(session);
		return siList;
	}
	// (헌혈의집) '군/구' 목록 조회 ServiceImpl
	@Override
	public List<String> selectGunguList(String searchArea) {
		List<String> gunguList = pStore.selectGunguList(session, searchArea);
		return gunguList;
	}
	
	
	/* 헌혈의집 검색 */
	@Override
	public List<Place> selectListByKeyowrd(Search search) {
		List<Place> searchResult = pStore.selectListByKeyword(session, search);
		return searchResult;
	}

}
