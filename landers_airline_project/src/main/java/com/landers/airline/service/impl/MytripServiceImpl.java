package com.landers.airline.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.landers.airline.dao.MytripDao;
import com.landers.airline.dto.CalendarDto;
import com.landers.airline.service.MytripService;

@Service
public class MytripServiceImpl implements MytripService{

	@Autowired
	MytripDao dao;

	@Override
	public List<CalendarDto> calendarlist(CalendarDto dto) {
		return dao.calendarlist(dto);
	}

	@Override
	public String pp(CalendarDto dto) {
		return dao.pp(dto);
	}

	@Override
	public String p(CalendarDto dto) {
		return dao.p(dto);
	}

	@Override
	public String nn(CalendarDto dto) {
		return dao.nn(dto);
	}

	@Override
	public String n(CalendarDto dto) {
		return dao.n(dto);
	}

	@Override
	public int year(CalendarDto dto) {
		return dao.year(dto);
	}

	@Override
	public int month(CalendarDto dto) {
		return dao.month(dto);
	}

	@Override
	public int dayOfWeek(CalendarDto dto) {
		return dao.dayOfWeek(dto);
	}

}
