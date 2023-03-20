package com.kh.blood.booking.domain;

public class Search {
	private String pHome;
	private String pCity;
	private String pCountry;
	private String pAddr;
	// 원래 : pHome, pAddr, pPhone
	
	public Search() {}
	
	

	/*public Search(String pHome) {
		super();
		this.pHome = pHome;
	}

	public String getpHome() {
		return pHome;
	}

	public void setpHome(String pHome) {
		this.pHome = pHome;
	}

	@Override
	public String toString() {
		return "Search [pHome=" + pHome + "]";
	}
	*/
	
	
	
	
	
	public Search(String pHome) {
		super();
		this.pHome = pHome;
	}



	// 생성자
	public Search(String pHome, String pCity, String pCountry, String pAddr) {
		super();
		this.pHome = pHome;
		this.pCity = pCity;
		this.pCountry = pCountry;
		this.pAddr = pAddr;
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

	@Override
	public String toString() {
		return "Search [pHome=" + pHome + ", pCity=" + pCity + ", pCountry=" + pCountry + ", pAddr=" + pAddr + "]";
	}


	
}
