package com.kh.blood.faq.domain;

public class Find {
	private String searchValue;
	private String searchCondition;
	
	public Find() {
		super();
	}

	public String getSearchValue() {
		return searchValue;
	}

	public void setSearchValue(String searchValue) {
		this.searchValue = searchValue;
	}

	public String getSearchCondition() {
		return searchCondition;
	}

	public void setSearchCondition(String searchCondition) {
		this.searchCondition = searchCondition;
	}

	@Override
	public String toString() {
		return "Search [searchValue=" + searchValue + ", searchCondition=" + searchCondition + "]";
	}
	
	
	
}
