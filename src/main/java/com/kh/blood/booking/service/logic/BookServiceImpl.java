package com.kh.blood.booking.service.logic;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.blood.booking.domain.Book;
import com.kh.blood.booking.service.BookService;
import com.kh.blood.booking.store.BookStore;

@Service
public class BookServiceImpl implements BookService{
	
	@Autowired
	private BookStore bStore;
//	@Autowired
	private SqlSession session;
	
	/* 헌혈예약 등록 ServiceImpl */
	@Override
	public int insertBook(Book book) {
		return bStore.insertBook(session, book);
	}

}
