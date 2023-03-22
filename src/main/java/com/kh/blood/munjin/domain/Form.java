package com.kh.blood.munjin.domain;
import java.util.List;

public class Form
{
    private List<String> rosCondition;
    private List<String> rosDay;
    private List<String> rosWeek;
    private List<String> rosMonth;
    private List<String> rosYear;
    private List<String> rosEE;
    private List<String> rosDrug;
    private List<String> rosZrug;
    private List<String> rosMosquito;
    private List<String> rosVCJD;

    public Form()
    {
        
    }

    public Form(List<String> rosCondition, List<String> rosDay, List<String> rosWeek, List<String> rosMonth, List<String> rosYear, List<String> rosEE, List<String> rosDrug, List<String> rosZrug, List<String> rosMosquito, List<String> rosVCJD)
    {
        this.rosCondition = rosCondition;
        this.rosDay = rosDay;
        this.rosWeek = rosWeek;
        this.rosMonth = rosMonth;
        this.rosYear = rosYear;
        this.rosEE = rosEE;
        this.rosDrug = rosDrug;
        this.rosZrug = rosZrug;
        this.rosMosquito = rosMosquito;
        this.rosVCJD = rosVCJD;
    }

    public List<String> getRosCondition()
    {
        return rosCondition;
    }

    public void setRosCondition(List<String> rosCondition)
    {
        this.rosCondition = rosCondition;
    }

    public List<String> getRosDay()
    {
        return rosDay;
    }

    public void setRosDay(List<String> rosDay)
    {
        this.rosDay = rosDay;
    }

    public List<String> getRosWeek()
    {
        return rosWeek;
    }

    public void setRosWeek(List<String> rosWeek)
    {
        this.rosWeek = rosWeek;
    }

    public List<String> getRosMonth()
    {
        return rosMonth;
    }

    public void setRosMonth(List<String> rosMonth)
    {
        this.rosMonth = rosMonth;
    }

    public List<String> getRosYear()
    {
        return rosYear;
    }

    public void setRosYear(List<String> rosYear)
    {
        this.rosYear = rosYear;
    }

    public List<String> getRosEE()
    {
        return rosEE;
    }

    public void setRosEE(List<String> rosEE)
    {
        this.rosEE = rosEE;
    }

    public List<String> getRosDrug()
    {
        return rosDrug;
    }

    public void setRosDrug(List<String> rosDrug)
    {
        this.rosDrug = rosDrug;
    }

    public List<String> getRosZrug()
    {
        return rosZrug;
    }

    public void setRosZrug(List<String> rosZrug)
    {
        this.rosZrug = rosZrug;
    }

    public List<String> getRosMosquito()
    {
        return rosMosquito;
    }

    public void setRosMosquito(List<String> rosMosquito)
    {
        this.rosMosquito = rosMosquito;
    }

    public List<String> getRosVCJD()
    {
        return rosVCJD;
    }

    public void setRosVCJD(List<String> rosVCJD)
    {
        this.rosVCJD = rosVCJD;
    }

    @Override
    public String toString()
    {
        return "Form{" +
                "rosCondition=" + rosCondition +
                ", rosDay=" + rosDay +
                ", rosWeek=" + rosWeek +
                ", rosMonth=" + rosMonth +
                ", rosYear=" + rosYear +
                ", rosEE=" + rosEE +
                ", rosDrug=" + rosDrug +
                ", rosZrug=" + rosZrug +
                ", rosMosquito=" + rosMosquito +
                ", rosVCJD=" + rosVCJD +
                '}';
    }
}
