package com.landers.airline.service;

import java.util.List;

import com.landers.airline.dto.CalendarDto;

public interface MytripService {
	
	List<CalendarDto> calendarlist(CalendarDto dto);

}
