package com.kh.blood.munjin.store.logic;

import com.kh.blood.munjin.domain.Form;
import com.kh.blood.munjin.domain.MunjinMember;
import com.kh.blood.munjin.store.MunjinStore;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MunjinStoreImpl implements MunjinStore
{

    @Override
    public int insertMunjinMember(SqlSession session, MunjinMember munjinMember)
    {
        return session.insert("MunjinMapper.insertMunjinMember", munjinMember);
    }

    @Override
    public void insertMunjinForm(SqlSession session, Form form)
    {
        session.insert("MunjinMapper.insertMunjinForm", form);
    }

}
