package com.kh.blood.notice.service;

import java.util.List;

import com.kh.blood.notice.domain.Notice;

public interface NoticeService {

	// Notice 목록(첫화면)
	List<Notice> selectNotice();

}
