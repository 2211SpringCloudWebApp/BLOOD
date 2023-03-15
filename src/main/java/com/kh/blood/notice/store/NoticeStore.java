package com.kh.blood.notice.store;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.kh.blood.notice.domain.Notice;

public interface NoticeStore {

	List<Notice> selectNotice(SqlSession session);

}
