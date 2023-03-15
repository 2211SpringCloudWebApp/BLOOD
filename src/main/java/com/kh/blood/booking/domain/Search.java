package com.kh.blood.booking.domain;

public class Search {

	private String pCity;
	private String pCountry;
	private String pHome;
	
	// 생성자
	public Search(String pCity, String pCountry, String pHome) {
		super();
		this.pCity = pCity;
		this.pCountry = pCountry;
		this.pHome = pHome;
	}

	// getter/setter 
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

	public String getpHome() {
		return pHome;
	}

	public void setpHome(String pHome) {
		this.pHome = pHome;
	}

	// toString()
	@Override
	public String toString() {
		return "Search [pCity=" + pCity + ", pCountry=" + pCountry + ", pHome=" + pHome + "]";
	}
	
	
}
