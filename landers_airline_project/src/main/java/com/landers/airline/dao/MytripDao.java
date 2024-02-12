package com.landers.airline.dao;

import java.util.List;

import com.landers.airline.dto.CalendarDto;

public interface MytripDao {
	
	List<CalendarDto> calendarlist(CalendarDto dto);
	
	String pp(CalendarDto dto);
	String p(CalendarDto dto);
	String nn(CalendarDto dto);
	String n(CalendarDto dto);
	
	int year(CalendarDto dto);
	int month(CalendarDto dto);
	int dayOfWeek(CalendarDto dto);

}
