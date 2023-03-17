package com.kh.blood.booking.domain;

public class Search {
	private String pCity;
	private String pCountry;
	private String pAddr;
	// 원래 : pHome, pAddr, pPhone
	
	public Search() {}
	
	// 생성자
	public Search(String pCity, String pCountry, String pAddr) {
		super();
		this.pCity = pCity;
		this.pCountry = pCountry;
		this.pAddr = pAddr;
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

	@Override
	public String toString() {
		return "Search [pCity=" + pCity + ", pCountry=" + pCountry + ", pAddr=" + pAddr + "]";
	}
	
}
