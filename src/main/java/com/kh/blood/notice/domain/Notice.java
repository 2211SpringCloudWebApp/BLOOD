package com.kh.blood.notice.domain;

import java.sql.Timestamp;

public class Notice {
	
    private int noticeNo;    // 게시글 번호
    private String noticeTitle;   // 게시글 제목
    private String noticeContent; // 게시글 내용
    private Timestamp nCreateDate; // 생성 날짜
    private String memberId;  // 게시글 작성자 id
    private int viewCount; // 조회수
	
}
