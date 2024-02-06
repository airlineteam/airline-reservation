package com.landers.airline.service;

import java.util.List;

import com.landers.airline.dto.FlightinfoDto;
import com.landers.airline.dto.ScheduleDto;

public interface ReservationService {

	boolean schedule(ScheduleDto dto);
	
	List<FlightinfoDto> flightlist(FlightinfoDto dto);
}
