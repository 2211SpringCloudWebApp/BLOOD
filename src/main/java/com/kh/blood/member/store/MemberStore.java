package com.kh.blood.member.store;

import org.apache.ibatis.session.SqlSession;

import com.kh.blood.member.domain.Member;

public interface MemberStore {
	/**
	 * 멤버등록 Store
	 * @param session
	 * @param member
	 * @return int
	 */
		public int insertMember(SqlSession session, Member member);

		/**
		 * 멤버 로그인 Store
		 * @param session
		 * @param member
		 * @return int
		 */
	
	public Member checkMemberLogin(SqlSession session, Member member);
		/**
		 * 아이디로 멤버 조회
		 * @param session
		 * @param member
		 * @return
		 */
	public Member selectOneById(SqlSession session, String member);
		
		/**
		 * 회원 정보수정
		 * @param session
		 * @param member
		 * @return
		 */
		public int updateMember(SqlSession session, Member member);
		/**
		 * 멤버 탈퇴
		 * @param session
		 * @param memberId
		 * @return
		 */
		public int deleteMember(SqlSession session, String memberId);
		/**
		 * 아이디 찾기
		 * @param session
		 * @param mParam
		 * @return
		 */
		public Member findId(SqlSession session, Member mParam);
		/**
		 * 비밀번호 찾기
		 * @param session
		 * @param mParam
		 * @return
		 */
		public Member findPw(SqlSession session, Member mParam);
}

