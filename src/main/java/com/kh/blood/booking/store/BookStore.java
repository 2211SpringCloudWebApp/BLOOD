package com.kh.blood.booking.store;

import org.apache.ibatis.session.SqlSession;

import com.kh.blood.booking.domain.Book;

public interface BookStore {

	/**
	 * 헌혈예약 등록 Store
	 * @param session
	 * @param book
	 * @return int
	 */
	int insertBook(SqlSession session, Book book);

}
