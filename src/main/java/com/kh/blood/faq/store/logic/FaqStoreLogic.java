package com.kh.blood.faq.store.logic;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kh.blood.faq.domain.Faq;
import com.kh.blood.faq.domain.Find;
import com.kh.blood.faq.store.FaqStore;

@Repository
public class FaqStoreLogic implements FaqStore{

	// 단순 목록 보기(페이징 x)
	@Override
	public List<Faq> selectFaq(SqlSession session) {
		List<Faq> fList = session.selectList("FaqMapper.selectFaq");
		return fList;
	}

	@Override
	public int deleteFaq(SqlSession session, int faqNo) {
		int result = session.delete("FaqMapper.deleteFaq", faqNo);
		return result;
	}

	@Override
	public int insertFaq(SqlSession session, Faq faq) {
		int result = session.insert("FaqMapper.insertFaq", faq);
		return result;
	}

	@Override
	public Faq selectOneById(SqlSession session, int faqNo) {
		Faq faq = session.selectOne("FaqMapper.selectOneById", faqNo);
		return faq;
	}

	@Override
	public List<Faq> selectListByKeyword(SqlSession session, Find find) {
		List<Faq> searchList = session.selectList("FaqMapper.selectListByKeyword", find);
		return searchList;
	}



	
	
	
}
