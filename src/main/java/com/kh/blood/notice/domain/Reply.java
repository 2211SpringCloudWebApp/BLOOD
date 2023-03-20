package com.kh.blood.notice.domain;

import java.sql.Timestamp;

public class Reply {

    private int replyNo;    // 게시글 번호
    private String replyContent; // 게시글 내용
    private Timestamp rCreateDate;
    private String memberId;  // 게시글 작성자 id
    private int noticeNo; // 조회수
}
