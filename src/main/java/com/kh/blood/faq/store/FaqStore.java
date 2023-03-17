package com.kh.blood.faq.store;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.kh.blood.faq.domain.Faq;
import com.kh.blood.faq.domain.Find;

public interface FaqStore {

	List<Faq> selectFaq(SqlSession session);

	
	int deleteFaq(SqlSession session, int faqNo);


	int insertFaq(SqlSession session, Faq faq);


	Faq selectOneById(SqlSession session, int faqNo);


	List<Faq> selectListByKeyword(SqlSession session, Find find);

	

}
