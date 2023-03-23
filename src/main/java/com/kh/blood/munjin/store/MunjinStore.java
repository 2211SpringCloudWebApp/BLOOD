package com.kh.blood.munjin.store;

import com.kh.blood.munjin.domain.Form;
import com.kh.blood.munjin.domain.MunjinMember;
import org.apache.ibatis.session.SqlSession;

public interface MunjinStore
{
    int insertMunjinMember(SqlSession sqlSession, MunjinMember munjinMember);
    int insertMunjinForm(SqlSession session, Form form);
}
