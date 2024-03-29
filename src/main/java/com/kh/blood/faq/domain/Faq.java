package com.kh.blood.faq.domain;

public class Faq {
	
	private int faqNo;
	private String faqTitle;
	private String faqContent;
	
	public Faq() {
		super();
	}

	public int getFaqNo() {
		return faqNo;
	}

	public void setFaqNo(int faqNo) {
		this.faqNo = faqNo;
	}

	public String getFaqTitle() {
		return faqTitle;
	}

	public void setFaqTitle(String faqTitle) {
		this.faqTitle = faqTitle;
	}

	public String getFaqContent() {
		return faqContent;
	}

	public void setFaqContent(String faqContent) {
		this.faqContent = faqContent;
	}

	@Override
	public String toString() {
		return "Board [faqNo=" + faqNo + ", faqTitle=" + faqTitle + ", faqContent=" + faqContent + "]";
	}
	
	
}
