package com.landers.airline.dao;

import java.util.List;

import com.landers.airline.dto.CalendarDto;

public interface MytripDao {
	
	List<CalendarDto> calendarlist(CalendarDto dto);

}
