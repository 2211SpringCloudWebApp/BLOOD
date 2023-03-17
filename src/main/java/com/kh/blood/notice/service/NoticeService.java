package com.kh.blood.notice.service;

import java.util.List;

import com.kh.blood.notice.domain.Notice;
import com.kh.blood.notice.domain.PageIn;
import com.kh.blood.notice.domain.Search;

public interface NoticeService {

	// Notice 목록(첫화면)
	List<Notice> selectNotice(PageIn pi);

	int insertNotice(Notice notice);

	int deleteNotice(int noticeNo);

	Notice selectOneById(int noticeNo);

	int updateNotice(Notice notice);
	
	int getListCount(Search search);

	int getListCount();

	List<Notice> selectListByKeyword(PageIn pi, Search search);



}
