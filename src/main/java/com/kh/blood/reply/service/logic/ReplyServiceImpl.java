package com.kh.blood.reply.service.logic;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.blood.reply.domain.Reply;
import com.kh.blood.reply.service.ReplyService;
import com.kh.blood.reply.store.ReplyStore;

@Service
public class ReplyServiceImpl implements ReplyService{

	@Autowired
	private SqlSession session;
	@Autowired
	private ReplyStore rStore;
	
	
	@Override
	public List<Reply> selectReply(int noticeNo) {
		List<Reply> rList = rStore.selectReply(session, noticeNo);
		return rList;
	}

	@Override
	public int insertReply(Reply reply) {
		int result = rStore.insertReply(session, reply);
		return result;
	}

	@Override
	public int deleteReply(int replyNo) {
		int result = rStore.deleteReply(session, replyNo);
		return result;
	}
}
