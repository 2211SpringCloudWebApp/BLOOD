package com.kh.blood.member.service.logic;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.blood.member.domain.Member;
import com.kh.blood.member.service.MemberService;
import com.kh.blood.member.store.MemberStore;

@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	private SqlSession session;	
	@Autowired
	private MemberStore mStore;
	
	@Override
	public int insertMember(Member member) {
		int result = mStore.insertMember(session, member);
		return result;
	}

	@Override
	public Member checkMemberLogin(Member member) {
		Member mOne = mStore.checkMemberLogin(session, member);
		return mOne;
	}

	@Override
	public Member selectOneById(String memberId) {
		Member member = mStore.selectOneById(session, memberId);
		return member;
	}

	@Override
	public int updateMember(Member member) {
		int result = mStore.updateMember(session, member);
		return result;
	}

	@Override
	public int deleteMember(String memberId) {
		int result = mStore.deleteMember(session, memberId);
		return result;
	}

	@Override
	public Member findId(Member mParam) {
		Member member = mStore.findId(session, mParam);
		return member;
	}

	@Override
	public Member findPw(Member mParam) {
		Member member = mStore.findPw(session, mParam);
		return member;
	}


	
}
