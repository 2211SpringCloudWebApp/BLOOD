package com.kh.blood.notice.store.logic;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kh.blood.notice.domain.Notice;
import com.kh.blood.notice.store.NoticeStore;

@Repository
public class NoticeStoreLogic implements NoticeStore{

	// 목록 보기(페이징 o)
	@Override
	public List<Notice> selectNotice(SqlSession session) {
		List<Notice> nList = session.selectList("NoticeMapper.selectNotice");
		return nList;
	}

}
