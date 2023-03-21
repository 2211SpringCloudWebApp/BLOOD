package com.kh.blood.reply.store;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.kh.blood.reply.domain.Reply;

public interface ReplyStore {

	List<Reply> selectReply(SqlSession session, int noticeNo);

	int insertReply(SqlSession session, Reply reply);

	int deleteReply(SqlSession session, int replyNo);

}
