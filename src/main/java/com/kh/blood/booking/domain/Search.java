package com.kh.blood.booking.domain;

public class Search {

	private String pHome;
	private String pAddr;
	private String pPhone;
	
	// 생성자
	public Search(String pHome, String pAddr, String pPhone) {
		super();
		this.pHome = pHome;
		this.pAddr = pAddr;
		this.pPhone = pPhone;
	}

	// getter/setter
	public String getpHome() {
		return pHome;
	}

	public void setpHome(String pHome) {
		this.pHome = pHome;
	}

	public String getpAddr() {
		return pAddr;
	}

	public void setpAddr(String pAddr) {
		this.pAddr = pAddr;
	}

	public String getpPhone() {
		return pPhone;
	}

	public void setpPhone(String pPhone) {
		this.pPhone = pPhone;
	}

	// toString()
	@Override
	public String toString() {
		return "Search [pHome=" + pHome + ", pAddr=" + pAddr + ", pPhone=" + pPhone + "]";
	}
	
	
	
	
	
}
