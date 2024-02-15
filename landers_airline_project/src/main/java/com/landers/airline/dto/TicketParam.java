package com.landers.airline.dto;


public class TicketParam{

	private String choice;
	private String search;
	private int pageNumber;
	private String user_id;
	
	public TicketParam() {
	}

	public TicketParam(String choice, String search, int pageNumber) {
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


	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	@Override
	public String toString() {
		return "TicketParam [choice=" + choice + ", search=" + search + ", pageNumber=" + pageNumber + ", user_id="
				+ user_id + "]";
	}
	
	
}
