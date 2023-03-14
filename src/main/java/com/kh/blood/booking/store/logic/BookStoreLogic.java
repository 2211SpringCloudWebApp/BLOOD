package com.kh.blood.booking.store.logic;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kh.blood.booking.domain.Book;
import com.kh.blood.booking.store.BookStore;

@Repository
public class BookStoreLogic implements BookStore{

	/* 헌혈예약 등록 StoreLogic */
	@Override
	public int insertBook(SqlSession session, Book book) {
		int result = session.insert("BookMapper.insertBook", book);
		return result;
	}

	/* 헌혈예약 목록 조회 StoreLogic */
	@Override
	public List<Book> selectBookList(SqlSession session) {
		List<Book> bList = session.selectList("BookMapper.selectBookList");
		return bList;
	}

}
