package com.kh.blood.munjin.service.logic;

import com.kh.blood.munjin.domain.Form;
import com.kh.blood.munjin.domain.MunjinMember;
import com.kh.blood.munjin.service.MunjinService;
import com.kh.blood.munjin.store.MunjinStore;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MunjinServiceImpl implements MunjinService
{
    @Autowired
    private SqlSession session;
    @Autowired
    private MunjinStore munjinStore;

    @Override
    public int insertMunjinMember(MunjinMember munjinMember)
    {
        int result = munjinStore.insertMunjinMember(session, munjinMember);
        return result;
    }

	@Override
	public int insertMunjinForm(Form form)
	{
		int result = munjinStore.insertMunjinForm(session, form);
        return result;
    }

}
