package com.kh.blood.faq.service.logic;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.blood.faq.domain.Faq;
import com.kh.blood.faq.domain.Find;
import com.kh.blood.faq.service.FaqService;
import com.kh.blood.faq.store.FaqStore;

@Service
public class FaqServiceImpl implements FaqService {

	@Autowired
	private SqlSession session;
	@Autowired
	private FaqStore fStore;

	
	@Override
	public List<Faq> selectFaq() {
		List<Faq> fList = fStore.selectFaq(session);
		return fList;
		
	}

	@Override
	public int deleteFaq(int faqNo) {
		int result = fStore.deleteFaq(session, faqNo);
		return result;
	}

	@Override
	public int insertFaq(Faq faq) {
		return fStore.insertFaq(session, faq);
	}

	@Override
	public Faq selectOneById(int faqNo) {
		return fStore.selectOneById(session, faqNo);
	}

	@Override
	public List<Faq> seleListByKeyword(Find find) {
		List<Faq> searchList = fStore.selectListByKeyword(session, find);
		return searchList;
	}
}
