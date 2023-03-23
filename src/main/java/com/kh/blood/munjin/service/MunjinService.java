package com.kh.blood.munjin.service;

import com.kh.blood.munjin.domain.Form;
import com.kh.blood.munjin.domain.MunjinMember;

public interface MunjinService
{
    int insertMunjinMember(MunjinMember munjinMember);
    int insertMunjinForm(Form form);

}
