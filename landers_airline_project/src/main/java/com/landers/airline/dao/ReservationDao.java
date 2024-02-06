package com.landers.airline.dao;

import java.util.List;

import com.landers.airline.dto.FlightinfoDto;
import com.landers.airline.dto.ScheduleDto;

public interface ReservationDao {

	
	List<FlightinfoDto> flightlist(FlightinfoDto dto);
	
	int schedule(ScheduleDto dto);
}
