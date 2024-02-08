package com.landers.airline.dto;

import java.io.Serializable;

public class FaqParam implements Serializable{

	private String choice;
	private String search;
	private int pageNumber;
	
	public FaqParam() {
	}

	public FaqParam(String choice, String search, int pageNumber) {
		super();
		this.choice = choice;
		this.search = search;
		this.pageNumber = pageNumber;
	}

	public String getChoice() {
		return choice;
	}

	public void setChoice(String choice) {
		this.choice = choice;
	}

	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}

	public int getPageNumber() {
		return pageNumber;
	}

	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}

	@Override
	public String toString() {
		return "FaqParam [choice=" + choice + ", search=" + search + ", pageNumber=" + pageNumber + "]";
	}
}
