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
        int result = session.insert("MunjinMapper.insertMunjinMember", munjinMember);
        return result;
    }

    @Override
    public String selectionsForm(SqlSession session, Form form)
    {
        session.insert("MunjinMapper.insertMunjinForm", form);
        return "선택사항 넣어봄";
    }
}
