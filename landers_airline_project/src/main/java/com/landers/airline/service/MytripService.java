package com.landers.airline.service;

import java.util.Calendar;
import java.util.List;

import com.landers.airline.dto.CalendarDto;

public interface MytripService {
	
	List<CalendarDto> calendarlist(CalendarDto dto);
	
	String pp(CalendarDto dto);
	String p(CalendarDto dto);
	String nn(CalendarDto dto);
	String n(CalendarDto dto);
	
	int year(CalendarDto dto);
	int month(CalendarDto dto);
	int dayOfWeek(CalendarDto dto);
	

}
