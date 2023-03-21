package com.kh.blood.booking.service.logic;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.blood.booking.domain.Book;
import com.kh.blood.booking.service.BookService;
import com.kh.blood.booking.store.BookStore;
import com.kh.blood.member.domain.Member;

@Service
public class BookServiceImpl implements BookService{
	
	@Autowired
	private BookStore bStore;
	@Autowired
	private SqlSession session;
	
	/* 헌혈자 인증 ServiceImpl */
	@Override
	public Member selectBookCertify(String memberId) {
		Member member = bStore.selectBookCertify(session, memberId);
		return member;
	}

	
	/* 헌혈예약 등록 ServiceImpl */
	@Override
	public int insertBook(Book book) {
		return bStore.insertBook(session, book);
	}

	
	/* 헌혈예약 목록 조회 ServiceImpl */
	@Override
	public List<Book> selectBookList(String memberId) {
		List<Book> bList = bStore.selectBookList(session, memberId);
		return bList;
	}





	
	

}
