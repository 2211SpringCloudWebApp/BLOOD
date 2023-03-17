package com.kh.blood.munjin.domain;

import java.util.Date;

public class MunjinMember
{
    private int rosNo;
    private String munjinName;
    private String munjinKn;
    private Date rosDate;

    public MunjinMember()
    {
    }

    public MunjinMember(int rosNo, String munjinName, String munjinKn, Date rosDate)
    {
        this.rosNo = rosNo;
        this.munjinName = munjinName;
        this.munjinKn = munjinKn;
        this.rosDate = rosDate;
    }

    public int getRosNo()
    {
        return rosNo;
    }

    public void setRosNo(int rosNo)
    {
        this.rosNo = rosNo;
    }

    public String getMunjinName()
    {
        return munjinName;
    }

    public void setMunjinName(String munjinName)
    {
        this.munjinName = munjinName;
    }

    public String getMunjinKn()
    {
        return munjinKn;
    }

    public void setMunjinKn(String munjinKn)
    {
        this.munjinKn = munjinKn;
    }

    public Date getRosDate()
    {
        return rosDate;
    }

    public void setRosDate(Date rosDate)
    {
        this.rosDate = rosDate;
    }

    @Override
    public String toString()
    {
        return "MunjinMember{" +
                "rosNo=" + rosNo +
                ", munjinName='" + munjinName + '\'' +
                ", munjinKn='" + munjinKn + '\'' +
                ", rosDate=" + rosDate +
                '}';
    }
}