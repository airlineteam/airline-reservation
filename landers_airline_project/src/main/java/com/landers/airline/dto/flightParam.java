package com.landers.airline.dto;

public class flightParam {

	private int flight_id;
	private int person_num;
	
	public flightParam() {
		
	}

	public flightParam(int flight_id, int person_num) {
		super();
		this.flight_id = flight_id;
		this.person_num = person_num;
	}

	public int getFlight_id() {
		return flight_id;
	}

	public void setFlight_id(int flight_id) {
		this.flight_id = flight_id;
	}

	public int getPerson_num() {
		return person_num;
	}

	public void setPerson_num(int person_num) {
		this.person_num = person_num;
	}

	@Override
	public String toString() {
		return "flightParam [flight_id=" + flight_id + ", person_num=" + person_num + "]";
	}
	
	
}
