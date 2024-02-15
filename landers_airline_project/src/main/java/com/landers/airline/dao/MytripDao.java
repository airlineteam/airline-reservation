package com.landers.airline.dao;

import java.util.List;

import com.landers.airline.dto.CalendarDto;

public interface MytripDao {
	
	List<CalendarDto> insertmytrip(CalendarDto dto);
	
	int writemytrip(CalendarDto dto);
	
	// detail
	CalendarDto showmytrip(int seq);
	
	int deletemytrip(int seq);
	
	int updatemytrip(CalendarDto dto);

}
