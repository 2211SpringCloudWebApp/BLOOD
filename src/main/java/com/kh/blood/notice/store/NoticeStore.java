package com.kh.blood.notice.store;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.kh.blood.notice.domain.Notice;
import com.kh.blood.notice.domain.PageIn;
import com.kh.blood.notice.domain.Search;

public interface NoticeStore {

	List<Notice> selectNotice(SqlSession session, PageIn pi);

	int insertNotice(SqlSession session, Notice notice);

	int deleteNotice(SqlSession session, int noticeNo);

	Notice selectOneById(SqlSession session, int noticeNo);

	int updateNotice(SqlSession session, Notice notice);

	int getListCount(SqlSession session, Search search);

	List<Notice> selectListByKeyword(SqlSession session, PageIn pi, Search search);

	int getListCount(SqlSession session);



}
