package com.landers.airline.service;

import java.util.Calendar;
import java.util.List;

import com.landers.airline.dto.CalendarDto;

public interface MytripService {
	
	List<CalendarDto> insertmytrip(String user_id);
	
	


}
