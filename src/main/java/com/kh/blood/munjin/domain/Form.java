package com.kh.blood.munjin.domain;
import java.util.List;

public class Form
{
    private boolean rosYesOrNo;
    private List<String> rosCheckboxes;
    private List<String> agreeCheckBoxes;

    public boolean isRoaYesOrNo()
    {
        return rosYesOrNo;
    }

    public void setRoaYesOrNo(boolean rosYesOrNo)
    {
        this.rosYesOrNo = rosYesOrNo;
    }

    public List<String> getRoaCheckboxes()
    {
        return rosCheckboxes;
    }

    public void setRoaCheckboxes(List<String> rosCheckboxes)
    {
        this.rosCheckboxes = rosCheckboxes;
    }

    public List<String> getAgreeCheckBoxes()
    {
        return agreeCheckBoxes;
    }

    public void setAgreeCheckBoxes(List<String> agreeCheckBoxes)
    {
        this.agreeCheckBoxes = agreeCheckBoxes;
    }
}
