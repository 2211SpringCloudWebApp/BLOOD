package com.kh.blood.booking.service;

import com.kh.blood.booking.domain.Book;

public interface BookService {

	/**
	 * 헌혈예약 등록 Service
	 * @param book
	 * @return int
	 */
	public int insertBook(Book book);

}
