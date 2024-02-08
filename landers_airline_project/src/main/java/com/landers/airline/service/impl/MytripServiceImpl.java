package com.landers.airline.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.landers.airline.dao.MytripDao;
import com.landers.airline.dto.CalendarDto;
import com.landers.airline.service.MytripService;
import com.mysql.cj.Session;

@Service
public class MytripServiceImpl implements MytripService{

	@Autowired
	MytripDao dao;

	@Override
	public List<CalendarDto> calendarlist(CalendarDto dto) {
		return dao.calendarlist(dto);
	}
}
