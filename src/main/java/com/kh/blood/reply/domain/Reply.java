package com.kh.blood.reply.domain;

import java.sql.Timestamp;

public class Reply {

    private int replyNo;    // 댓글 번호
    private String replyContent; // 댓글 내용
    private Timestamp rCreateDate; // 댓글 작성 시간
    private String memberId;  // 댓글 작성자 id
    private int noticeNo; // 댓글이 작성된 게시글 번호
	
    public Reply() {
		super();
	}

	public int getReplyNo() {
		return replyNo;
	}

	public void setReplyNo(int replyNo) {
		this.replyNo = replyNo;
	}

	public String getReplyContent() {
		return replyContent;
	}

	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}

	public Timestamp getrCreateDate() {
		return rCreateDate;
	}

	public void setrCreateDate(Timestamp rCreateDate) {
		this.rCreateDate = rCreateDate;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public int getNoticeNo() {
		return noticeNo;
	}

	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}

	@Override
	public String toString() {
		return "Reply [replyNo=" + replyNo + ", replyContent=" + replyContent + ", rCreateDate=" + rCreateDate
				+ ", memberId=" + memberId + ", noticeNo=" + noticeNo + "]";
	}
    
}
