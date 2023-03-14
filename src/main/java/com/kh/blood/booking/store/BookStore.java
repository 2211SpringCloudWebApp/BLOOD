package com.kh.blood.booking.store;

import java.util.List;

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

	
	/**
	 * 헌혈예약 목록 조회 Store
	 * @param session
	 * @return List<Book>
	 */
	List<Book> selectBookList(SqlSession session);

}
