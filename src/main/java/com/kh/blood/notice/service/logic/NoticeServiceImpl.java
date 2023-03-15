package com.kh.blood.notice.service.logic;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.blood.notice.domain.Notice;
import com.kh.blood.notice.service.NoticeService;
import com.kh.blood.notice.store.NoticeStore;

@Service
public class NoticeServiceImpl implements NoticeService{
	
	@Autowired
	private SqlSession session;
	@Autowired
	private NoticeStore nStore;
	
	
	@Override
	public List<Notice> selectNotice() {
		List<Notice> nList = nStore.selectNotice(session);
		return nList;
	}
	
	
}
