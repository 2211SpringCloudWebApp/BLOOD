package com.kh.blood.notice.service.logic;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.blood.notice.domain.Notice;
import com.kh.blood.notice.domain.PageIn;
import com.kh.blood.notice.domain.Search;
import com.kh.blood.notice.service.NoticeService;
import com.kh.blood.notice.store.NoticeStore;

@Service
public class NoticeServiceImpl implements NoticeService{
	
	@Autowired
	private SqlSession session;
	@Autowired
	private NoticeStore nStore;
	
	
	@Override
	public List<Notice> selectNotice(PageIn pi) {
		List<Notice> nList = nStore.selectNotice(session, pi);
		return nList;
	}


	@Override
	public int insertNotice(Notice notice) {
		return nStore.insertNotice(session, notice);
	}


	@Override
	public int deleteNotice(int noticeNo) {
		int result = nStore.deleteNotice(session, noticeNo);
		return result;
	}


	@Override
	public Notice selectOneById(int noticeNo) {
		return nStore.selectOneById(session, noticeNo);
	}


	@Override
	public int updateNotice(Notice notice) {
		return nStore.updateNotice(session, notice);
	}

	
	@Override
	public List<Notice> selectListByKeyword(PageIn pi, Search search) {
		List<Notice> searchList = nStore.selectListByKeyword(session, pi, search);
		return searchList;
	}

	
	@Override
	public int getListCount(Search search) {
		int result = nStore.getListCount(session, search);
		return result;
	}


	@Override
	public int getListCount() {
		int result = nStore.getListCount(session);
		return result;
	}




	
	
}
