package com.landers.airline.dto;

public class FlightinfoDto {

	private int flight_id;
	private String flight_name;
	private String departure_airport;
	private String arrival_airport;
	private String departure_date;
	private String arrival_date;
	private String price;
	
	public FlightinfoDto() {
		
	}
	
	public FlightinfoDto(String departure_airport, String arrival_airport, String departure_date) {
		super();
		this.departure_airport = departure_airport;
		this.arrival_airport = arrival_airport;
		this.departure_date = departure_date;
	}

	public FlightinfoDto(int flight_id, String flight_name, String departure_airport, String arrival_airport,
			String departure_date, String arrival_date, String price) {
		super();
		this.flight_id = flight_id;
		this.flight_name = flight_name;
		this.departure_airport = departure_airport;
		this.arrival_airport = arrival_airport;
		this.departure_date = departure_date;
		this.arrival_date = arrival_date;
		this.price = price;
	}

	public int getFlight_id() {
		return flight_id;
	}

	public void setFlight_id(int flight_id) {
		this.flight_id = flight_id;
	}

	public String getFlight_name() {
		return flight_name;
	}

	public void setFlight_name(String flight_name) {
		this.flight_name = flight_name;
	}

	public String getDeparture_airport() {
		return departure_airport;
	}

	public void setDeparture_airport(String departure_airport) {
		this.departure_airport = departure_airport;
	}

	public String getArrival_airport() {
		return arrival_airport;
	}

	public void setArrival_airport(String arrival_airport) {
		this.arrival_airport = arrival_airport;
	}

	public String getDeparture_date() {
		return departure_date;
	}

	public void setDeparture_date(String departure_date) {
		this.departure_date = departure_date;
	}

	public String getArrival_date() {
		return arrival_date;
	}

	public void setArrival_date(String arrival_date) {
		this.arrival_date = arrival_date;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "FlightinfoDto [flight_id=" + flight_id + ", flight_name=" + flight_name + ", departure_airport="
				+ departure_airport + ", arrival_airport=" + arrival_airport + ", departure_date=" + departure_date
				+ ", arrival_date=" + arrival_date + ", price=" + price + "]";
	}
	
	
}
