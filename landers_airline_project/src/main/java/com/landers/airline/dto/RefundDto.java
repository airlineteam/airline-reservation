package com.landers.airline.dto;

public class RefundDto {

	private int refund_id;
	private String user_id;
	private int ticket_id;
	private String content;
	private String refund_status;
	
	public RefundDto() {
			}

	public RefundDto(int refund_id, String user_id, int ticket_id, String content, String refund_status) {
		super();
		this.refund_id = refund_id;
		this.user_id = user_id;
		this.ticket_id = ticket_id;
		this.content = content;
		this.refund_status = refund_status;
	}

	public int getRefund_id() {
		return refund_id;
	}

	public void setRefund_id(int refund_id) {
		this.refund_id = refund_id;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public int getTicket_id() {
		return ticket_id;
	}

	public void setTicket_id(int ticket_id) {
		this.ticket_id = ticket_id;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getRefund_status() {
		return refund_status;
	}

	public void setRefund_status(String refund_status) {
		this.refund_status = refund_status;
	}

	@Override
	public String toString() {
		return "RefundDto [refund_id=" + refund_id + ", user_id=" + user_id + ", ticket_id=" + ticket_id + ", content="
				+ content + ", refund_status=" + refund_status + "]";
	}
	
	
}
