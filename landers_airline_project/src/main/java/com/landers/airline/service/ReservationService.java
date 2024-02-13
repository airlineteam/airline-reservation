package com.landers.airline.service;

import java.util.List;

import com.landers.airline.dto.FlightinfoDto;
import com.landers.airline.dto.ScheduleDto;
import com.landers.airline.dto.SeatDto;
import com.landers.airline.dto.TicketDto;

public interface ReservationService {

	boolean schedule(ScheduleDto dto);
	
	List<FlightinfoDto> flightlist(FlightinfoDto dto);
	
	List<SeatDto> seatlist(int flight_id);
	
	int seatselect(List<String> selectedSeats, int flight_id);
	
	FlightinfoDto flightInfo(int flight_id);
	
	int ticket(TicketDto dto);
}
