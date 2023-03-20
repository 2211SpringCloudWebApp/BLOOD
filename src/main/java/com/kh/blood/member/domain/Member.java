package com.kh.blood.member.domain;

public class Member {
	private String memberId;
	private String memberPw;
	private String memberName;
	private String memberKn;
	private String bloodType;
	private String memberEmail;
	private String memberAddr;
	private String memberPhone;
	private int memberType;
	
	
	public Member() {}
	
	

	public Member(String memberId, String memberPw) {
		super();
		this.memberId = memberId;
		this.memberPw = memberPw;
	}
	



	public Member(String memberName, String memberId, String memberKn) {
		super();
		this.memberName = memberName;
		this.memberId = memberId;
		this.memberKn = memberKn;
		
	}
	



	public Member(String memberId, String memberPw, String memberName, String memberKn, String bloodType,
			String memberEmail, String memberAddr, String memberPhone) {
		super();
		this.memberId = memberId;
		this.memberPw = memberPw;
		this.memberName = memberName;
		this.memberKn = memberKn;
		this.bloodType = bloodType;
		this.memberEmail = memberEmail;
		this.memberAddr = memberAddr;
		this.memberPhone = memberPhone;
	}



	public Member(String memberId, String memberPw, String memberName, String memberKn, String bloodType,
			String memberEmail, String memberAddr, String memberPhone, int memberType) {
		super();
		this.memberId = memberId;
		this.memberPw = memberPw;
		this.memberName = memberName;
		this.memberKn = memberKn;
		this.bloodType = bloodType;
		this.memberEmail = memberEmail;
		this.memberAddr = memberAddr;
		this.memberPhone = memberPhone;
		this.memberType = memberType;
	}

	public String getMemberId() {
		return memberId;
	}


	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}


	public String getMemberPw() {
		return memberPw;
	}


	public void setMemberPw(String memberPw) {
		this.memberPw = memberPw;
	}


	public String getMemberName() {
		return memberName;
	}


	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}


	public String getMemberKn() {
		return memberKn;
	}


	public void setMemberKn(String memberKn) {
		this.memberKn = memberKn;
	}


	public String getBloodType() {
		return bloodType;
	}


	public void setBloodType(String bloodType) {
		this.bloodType = bloodType;
	}


	public String getMemberEmail() {
		return memberEmail;
	}


	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}


	public String getMemberAddr() {
		return memberAddr;
	}


	public void setMemberAddr(String memberAddr) {
		this.memberAddr = memberAddr;
	}


	public String getMemberPhone() {
		return memberPhone;
	}


	public void setMemberPhone(String memberPhone) {
		this.memberPhone = memberPhone;
	}


	public int getMemberType() {
		return memberType;
	}


	public void setMemberType(int memberType) {
		this.memberType = memberType;
	}
	
	
	@Override
	public String toString() {
		return "Member [memberId=" + memberId + ", memberPw=" + memberPw + ", memberName=" + memberName + ", memberKn="
				+ memberKn + ", bloodType=" + bloodType + ", memberEmail=" + memberEmail + ", memberAddr=" + memberAddr
				+ ", memberPhone=" + memberPhone + ", memberType=" + memberType + "]";
	}
}
