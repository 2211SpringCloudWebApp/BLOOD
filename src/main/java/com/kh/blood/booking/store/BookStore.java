package com.kh.blood.booking.store;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.kh.blood.booking.domain.Book;
import com.kh.blood.member.domain.Member;

public interface BookStore {

	
	/**
	 * 헌혈자 인증 Store
	 * @param session
	 * @param mParam
	 * @return Member
	 */
	public Member selectBookCertify(SqlSession session, Member mParam);
	
	
	/**
	 * 헌혈예약 등록 Store
	 * @param session
	 * @param book
	 * @return int
	 */
	public int insertBook(SqlSession session, Book book);

	
	/**
	 * 헌혈예약 목록 조회 Store
	 * @param session
	 * @return List<Book>
	 */
	public List<Book> selectBookList(SqlSession session, String memberId);



}
