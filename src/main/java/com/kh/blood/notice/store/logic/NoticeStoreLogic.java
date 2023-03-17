package com.kh.blood.notice.store.logic;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kh.blood.notice.domain.Notice;
import com.kh.blood.notice.domain.PageIn;
import com.kh.blood.notice.domain.Search;
import com.kh.blood.notice.store.NoticeStore;

@Repository
public class NoticeStoreLogic implements NoticeStore{

	// 목록 보기(페이징 o)
	@Override
	public List<Notice> selectNotice(SqlSession session, PageIn pi) {
		int limit = pi.getBoardLimit();
		int currentPage = pi.getCurrentPage();
		int offset = (currentPage -1) * limit;
		RowBounds rowBounds = new RowBounds(offset, limit);
		List<Notice> nList = session.selectList("NoticeMapper.selectNotice", null, rowBounds);
		return nList;
	}

	@Override
	public int insertNotice(SqlSession session, Notice notice) {
		int result = session.insert("NoticeMapper.insertNotice", notice);
		return result;
	}

	@Override
	public int deleteNotice(SqlSession session, int noticeNo) {
		int result = session.delete("NoticeMapper.deleteNotice", noticeNo);
		return result;
	}

	@Override
	public Notice selectOneById(SqlSession session, int noticeNo) {
		session.update("NoticeMapper.updateView", noticeNo);
		Notice notice = session.selectOne("NoticeMapper.selectOneById", noticeNo);
		return notice;
	}

	@Override
	public int updateNotice(SqlSession session, Notice notice) {
		int result = session.update("NoticeMapper.updateNotice", notice);
		return result;
	}

	@Override
	public List<Notice> selectListByKeyword(SqlSession session, PageIn pi, Search search) {
		int limit = pi.getBoardLimit();
		int currentPage = pi.getCurrentPage();
		int offset = (currentPage - 1) * limit;
		RowBounds rowBounds = new RowBounds(offset, limit);
		List<Notice> searchList = session.selectList("NoticeMapper.selectListByKeyword", search, rowBounds);
		return searchList;
	}

	@Override
	public int getListCount(SqlSession session, Search search) {
		int result = session.selectOne("NoticeMapper.getListCount", search);
		return result;
	}

	@Override
	public int getListCount(SqlSession session) {
		int result = session.selectOne("NoticeMapper.getListCount");
		return result;
	}

	


}
