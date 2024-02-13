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
	public List<CalendarDto> insertmytrip(String user_id) {
		
		return dao.insertmytrip(user_id);
	}

	
}
