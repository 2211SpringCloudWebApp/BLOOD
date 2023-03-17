package com.kh.blood.notice.domain;

import java.sql.Timestamp;

public class Notice {
	
    private int noticeNo;    // 게시글 번호
    private String noticeTitle;   // 게시글 제목
    private String noticeContent; // 게시글 내용
    private Timestamp nCreateDate; // 생성 날짜
    private String memberId;  // 게시글 작성자 id
    private int viewCount; // 조회수
	
    public Notice() {
		super();
	}

	public int getNoticeNo() {
		return noticeNo;
	}

	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}

	public String getNoticeTitle() {
		return noticeTitle;
	}

	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}

	public String getNoticeContent() {
		return noticeContent;
	}

	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}

	public Timestamp getnCreateDate() {
		return nCreateDate;
	}

	public void setnCreateDate(Timestamp nCreateDate) {
		this.nCreateDate = nCreateDate;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public int getViewCount() {
		return viewCount;
	}

	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}

	@Override
	public String toString() {
		return "Notice [noticeNo=" + noticeNo + ", noticeTitle=" + noticeTitle + ", noticeContent=" + noticeContent
				+ ", nCreateDate=" + nCreateDate + ", memberId=" + memberId + ", viewCount=" + viewCount + "]";
	}
	
    
    
}
