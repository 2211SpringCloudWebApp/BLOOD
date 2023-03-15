package com.kh.blood.faq.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.kh.blood.faq.domain.Faq;

public interface FaqService {

	// FAQ 목록(첫화면)
	List<Faq> selectFaq();

	// FAQ 삭제
	int deleteFaq(int faqNo);

	// FAQ 등록
	int insertFaq(Faq faq);

	// FAQ 상세 검색
	Faq selectOneById(int faqNo);
	
	// FAQ 검색 목록
	List<Faq> seleListByKeyword(String keyword);
	
	
}
