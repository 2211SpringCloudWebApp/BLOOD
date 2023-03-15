package com.kh.blood.member.service;

import com.kh.blood.member.domain.Member;

public interface MemberService {
	/**
	 * 멤버 등록 Service
	 * @param member
	 * @return int
	 */
	public int insertMember(Member member);
	/**
	 * 멤버로그인 Service
	 * @param member
	 * @return
	 */
	public Member checkMemberLogin(Member member);
	/**
	 * 아이디로 멤버 조회
	 * @param memberId
	 * @return
	 */
	public Member selectOneById(String memberId);
	/**
	 * 회원정보 수정
	 * @param member
	 * @return
	 */
	
	public int updateMember(Member member);
	/**
	 * 회원 탈퇴
	 * @param memberId
	 * @return
	 */
	
	public int deleteMember(String memberId);
	
	/**
	 * 아이디 찾기
	 * @param mParam
	 * @return
	 */
	public Member findId(Member mParam);
	
	/**
	 * 비밀번호 찾기
	 * @param mParam
	 * @return
	 */
	public Member findPw(Member mParam); 
	
}