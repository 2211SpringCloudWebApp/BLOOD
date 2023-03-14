package com.kh.blood.booking.domain;

public class Place {
	private int pNo;
	private String pLocal;
	private String pHome;
	private String pCity;
	private String pCountry;
	private String pAddr;
	private String pPhone;
	
	// 생성자
	public Place(int pNo, String pLocal, String pHome, String pCity, String pCountry, String pAddr, String pPhone) {
		super();
		this.pNo = pNo;
		this.pLocal = pLocal;
		this.pHome = pHome;
		this.pCity = pCity;
		this.pCountry = pCountry;
		this.pAddr = pAddr;
		this.pPhone = pPhone;
	}

	// getter/setter
	public int getpNo() {
		return pNo;
	}

	public void setpNo(int pNo) {
		this.pNo = pNo;
	}

	public String getpLocal() {
		return pLocal;
	}

	public void setpLocal(String pLocal) {
		this.pLocal = pLocal;
	}

	public String getpHome() {
		return pHome;
	}

	public void setpHome(String pHome) {
		this.pHome = pHome;
	}

	public String getpCity() {
		return pCity;
	}

	public void setpCity(String pCity) {
		this.pCity = pCity;
	}

	public String getpCountry() {
		return pCountry;
	}

	public void setpCountry(String pCountry) {
		this.pCountry = pCountry;
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
		return "Place [pNo=" + pNo + ", pLocal=" + pLocal + ", pHome=" + pHome + ", pCity=" + pCity + ", pCountry="
				+ pCountry + ", pAddr=" + pAddr + ", pPhone=" + pPhone + "]";
	}

	
	
}
