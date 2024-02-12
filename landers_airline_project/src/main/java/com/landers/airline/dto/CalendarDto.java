package com.landers.airline.dto;

import java.io.Serializable;

public class CalendarDto implements Serializable{

	private int calendar_id;
	private int ticket_id;
	private String title;
	private String content;
	private String wdate;		
	
	public CalendarDto() {
	}
	
	

	public CalendarDto(int calendar_id, String title, String content, String wdate) {
		super();
		this.calendar_id = calendar_id;
		this.title = title;
		this.content = content;
		this.wdate = wdate;
	}



	public CalendarDto(int calendar_id, int ticket_id, String title, String content, String wdate) {
		super();
		this.calendar_id = calendar_id;
		this.ticket_id = ticket_id;
		this.title = title;
		this.content = content;
		this.wdate = wdate;
	}

	public int getCalendar_id() {
		return calendar_id;
	}

	public void setCalendar_id(int calendar_id) {
		this.calendar_id = calendar_id;
	}

	public int getTicket_id() {
		return ticket_id;
	}

	public void setTicket_id(int ticket_id) {
		this.ticket_id = ticket_id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getWdate() {
		return wdate;
	}

	public void setWdate(String wdate) {
		this.wdate = wdate;
	}

	@Override
	public String toString() {
		return "CalendarDto [calendar_id=" + calendar_id + ", ticket_id=" + ticket_id + ", title=" + title
				+ ", content=" + content + ", wdate=" + wdate + "]";
	}
}