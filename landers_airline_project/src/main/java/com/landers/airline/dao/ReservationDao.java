package com.landers.airline.dao;

import java.util.List;

import com.landers.airline.dto.FlightinfoDto;
import com.landers.airline.dto.ScheduleDto;
import com.landers.airline.dto.SeatDto;

public interface ReservationDao {
	
	List<FlightinfoDto> flightlist(FlightinfoDto dto);
	
	int schedule(ScheduleDto dto);
	
	List<SeatDto> seatlist(int flight_id);
	
	int seatselect(String seatName, int flightId);
}
