package com.landers.airline.service;

import java.util.Calendar;
import java.util.List;

import com.landers.airline.dto.CalendarDto;

public interface MytripService {
	
	List<CalendarDto> insertmytrip(CalendarDto dto);
	
	boolean writemytrip(CalendarDto dto);
	
	// detail
	CalendarDto showmytrip(int seq);
	
	boolean deletemytrip(int seq);

	boolean updatemytrip(CalendarDto dto);
}
