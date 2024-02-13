package com.landers.airline.dto;

public class SeatDto {

	private int seat_id;
	private int flight_id;
	private String seat_name;
	private String seat_price;
	private boolean is_available;

	public SeatDto() {
		
	}

	public SeatDto(int seat_id, int flight_id, String seat_name, String seat_price, boolean is_available) {
		super();
		this.seat_id = seat_id;
		this.flight_id = flight_id;
		this.seat_name = seat_name;
		this.seat_price = seat_price;
		this.is_available = is_available;
	}

	public int getSeat_id() {
		return seat_id;
	}

	public void setSeat_id(int seat_id) {
		this.seat_id = seat_id;
	}

	public int getFlight_id() {
		return flight_id;
	}

	public void setFlight_id(int flight_id) {
		this.flight_id = flight_id;
	}

	public String getSeat_name() {
		return seat_name;
	}

	public void setSeat_name(String seat_name) {
		this.seat_name = seat_name;
	}

	public String getSeat_price() {
		return seat_price;
	}

	public void setSeat_price(String seat_price) {
		this.seat_price = seat_price;
	}

	public boolean isIs_available() {
		return is_available;
	}

	public void setIs_available(boolean is_available) {
		this.is_available = is_available;
	}

	@Override
	public String toString() {
		return "SeatDto [seat_id=" + seat_id + ", flight_id=" + flight_id + ", seat_name=" + seat_name + ", seat_price="
				+ seat_price + ", is_available=" + is_available + "]";
	}
	
	
}
