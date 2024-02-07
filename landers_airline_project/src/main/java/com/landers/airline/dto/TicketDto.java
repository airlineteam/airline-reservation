package com.landers.airline.dto;

public class TicketDto {

	private String user_id;
	private  int schedule_id;
	private int final_price;
	private String final_date;
	private int flight_id;
	private int seat_id;
	
	public TicketDto() {
	}

	public TicketDto(int final_price, String final_date) {
		super();
		this.final_price = final_price;
		this.final_date = final_date;
	}

	public TicketDto(String user_id, int schedule_id, int final_price, String final_date, int flight_id, int seat_id) {
		super();
		this.user_id = user_id;
		this.schedule_id = schedule_id;
		this.final_price = final_price;
		this.final_date = final_date;
		this.flight_id = flight_id;
		this.seat_id = seat_id;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public int getSchedule_id() {
		return schedule_id;
	}

	public void setSchedule_id(int schedule_id) {
		this.schedule_id = schedule_id;
	}

	public int getFinal_price() {
		return final_price;
	}

	public void setFinal_price(int final_price) {
		this.final_price = final_price;
	}

	public String getFinal_date() {
		return final_date;
	}

	public void setFinal_date(String final_date) {
		this.final_date = final_date;
	}

	public int getFlight_id() {
		return flight_id;
	}

	public void setFlight_id(int flight_id) {
		this.flight_id = flight_id;
	}

	public int getSeat_id() {
		return seat_id;
	}

	public void setSeat_id(int seat_id) {
		this.seat_id = seat_id;
	}

	@Override
	public String toString() {
		return "TicketDto [user_id=" + user_id + ", schedule_id=" + schedule_id + ", final_price=" + final_price
				+ ", final_date=" + final_date + ", flight_id=" + flight_id + ", seat_id=" + seat_id + "]";
	}
	
	
	
	
	
}
