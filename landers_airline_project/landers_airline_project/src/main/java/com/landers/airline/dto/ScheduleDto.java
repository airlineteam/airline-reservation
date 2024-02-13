package com.landers.airline.dto;

public class ScheduleDto {

	private int schedule_id;
	private String departure_airport;
	private String arrival_airport;
	private String departure_date;
	private String person_num;
	
	public ScheduleDto() {
		
	}

	public ScheduleDto(int schedule_id, String departure_airport, String arrival_airport, String departure_date,
			String person_num) {
		super();
		this.schedule_id = schedule_id;
		this.departure_airport = departure_airport;
		this.arrival_airport = arrival_airport;
		this.departure_date = departure_date;
		this.person_num = person_num;
	}

	public int getSchedule_id() {
		return schedule_id;
	}

	public void setSchedule_id(int schedule_id) {
		this.schedule_id = schedule_id;
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

	public String getPerson_num() {
		return person_num;
	}

	public void setPerson_num(String person_num) {
		this.person_num = person_num;
	}

	@Override
	public String toString() {
		return "ScheduleDto [schedule_id=" + schedule_id + ", departure_airport=" + departure_airport
				+ ", arrival_airport=" + arrival_airport + ", departure_date=" + departure_date + ", person_num="
				+ person_num + "]";
	}

	
	
	
}
