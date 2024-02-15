package com.landers.airline.dto;

import java.io.Serializable;

public class CalendarDto implements Serializable{

	private int seq;
	private String user_id;
	private String title;
	private String content;
	private String wdate;		
	
	public CalendarDto() {
	}

	public CalendarDto(int seq, String user_id, String title, String content, String wdate) {
		super();
		this.seq = seq;
		this.user_id = user_id;
		this.title = title;
		this.content = content;
		this.wdate = wdate;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
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
		return "CalendarDto [seq=" + seq + ", user_id=" + user_id + ", title=" + title + ", content=" + content
				+ ", wdate=" + wdate + "]";
	}

	
	
	

}