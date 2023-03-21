package com.kh.blood.booking.service;

import java.util.List;

import com.kh.blood.booking.domain.Book;
import com.kh.blood.member.domain.Member;

public interface BookService {
	
	/**
	 * 헌혈자 인증 Service
	 * @param member
	 * @return
	 */
	public int selectBookCertify(Member mParam);

	/**
	 * 헌혈예약 등록 Service
	 * @param book
	 * @return int
	 */
	public int insertBook(Book book);

	/**
	 * 헌혈예약 목록 조회 Service
	 * @return List<Book>
	 */
	public List<Book> selectBookList(String memberId);


}
