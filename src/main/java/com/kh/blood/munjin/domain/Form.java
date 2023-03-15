package com.kh.blood.munjin.domain;
import java.util.List;

public class Form
{
    private boolean roaNo;
    private List<String> roaCheckboxes;

    public boolean isRoaNo()
    {
        return roaNo;
    }

    public void setRoaNo(boolean roaNo)
    {
        this.roaNo = roaNo;
    }

    public List<String> getRoaCheckboxes()
    {
        return roaCheckboxes;
    }

    public void setRoaCheckboxes(List<String> roaCheckboxes)
    {
        this.roaCheckboxes = roaCheckboxes;
    }
}
