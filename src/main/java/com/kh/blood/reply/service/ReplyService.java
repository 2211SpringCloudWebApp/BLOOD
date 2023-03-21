package com.kh.blood.reply.service;

import java.util.List;

import com.kh.blood.reply.domain.Reply;

public interface ReplyService {

	List<Reply> selectReply(int noticeNo);

	int insertReply(Reply reply);

	int deleteReply(int replyNo);

	
}
