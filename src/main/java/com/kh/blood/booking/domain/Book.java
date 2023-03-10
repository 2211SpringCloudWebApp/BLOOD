package com.kh.blood.booking.domain;

public class Book {
	private int bkNo;
	private String memberId;
	private String memberName;
	private String bkDate;
	private String bkTime;
	private String bkPhone;
	private String dnCheck;
	private int pNo;
	
	
	// getter/setter 메소드
	public int getBkNo() {
		return bkNo;
	}
	public void setBkNo(int bkNo) {
		this.bkNo = bkNo;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getBkDate() {
		return bkDate;
	}
	public void setBkDate(String bkDate) {
		this.bkDate = bkDate;
	}
	public String getBkTime() {
		return bkTime;
	}
	public void setBkTime(String bkTime) {
		this.bkTime = bkTime;
	}
	public String getBkPhone() {
		return bkPhone;
	}
	public void setBkPhone(String bkPhone) {
		this.bkPhone = bkPhone;
	}
	public String getDnCheck() {
		return dnCheck;
	}
	public void setDnCheck(String dnCheck) {
		this.dnCheck = dnCheck;
	}
	public int getpNo() {
		return pNo;
	}
	public void setpNo(int pNo) {
		this.pNo = pNo;
	}
	
	
	// toString()
	@Override
	public String toString() {
		return "Book [bkNo=" + bkNo + ", memberId=" + memberId + ", memberName=" + memberName + ", bkDate=" + bkDate
				+ ", bkTime=" + bkTime + ", bkPhone=" + bkPhone + ", dnCheck=" + dnCheck + ", pNo=" + pNo + "]";
	}

	
}
