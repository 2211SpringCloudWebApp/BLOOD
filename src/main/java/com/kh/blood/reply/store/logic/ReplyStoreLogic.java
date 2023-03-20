package com.kh.blood.reply.store.logic;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kh.blood.reply.domain.Reply;
import com.kh.blood.reply.store.ReplyStore;

@Repository
public class ReplyStoreLogic implements ReplyStore{

	@Override
	public List<Reply> selectReply(SqlSession session, int noticeNo) {
		List<Reply> rList = session.selectList("ReplyMapper.selectReply", noticeNo);
		return rList;
	}

	@Override
	public int insertReply(SqlSession session, Reply reply) {
		int result = session.insert("ReplyMapper.insertReply", reply);
		return result;
	}

	@Override
	public int deleteReply(SqlSession session, int replyNo) {
		int result = session.delete("ReplyMapper.deleteReply", replyNo);
		return result;
	}

	
}
