package com.landers.airline.dao;

import java.util.List;

import com.landers.airline.dto.FlightinfoDto;
import com.landers.airline.dto.ScheduleDto;
import com.landers.airline.dto.SeatDto;
import com.landers.airline.dto.TicketDto;
import com.landers.airline.dto.flightParam;

public interface ReservationDao {
	List<FlightinfoDto> flightlist(FlightinfoDto dto);
	
	int schedule(ScheduleDto dto);
	
	List<SeatDto> seatlist(int flight_id);
	
	int seatselect(String seatName, int flight_id);
	
	FlightinfoDto flightInfo(int flight_id);
	
	int ticket (TicketDto dto);
	
	TicketDto ticketinfo(int flight_id);
	
	int emptynumcount(flightParam param);
	
	String departure(int flight_id);
	
	int reservationCal(String reservationCalendar, String user_id);
}
