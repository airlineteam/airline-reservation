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
	public List<CalendarDto> insertmytrip(CalendarDto dto) {
		
		return dao.insertmytrip(dto);
	}

	@Override
	public boolean writemytrip(CalendarDto dto) {
		int count = dao.writemytrip(dto);
		return count>0;
	}

	@Override
	public CalendarDto showmytrip(int seq) {
		return dao.showmytrip(seq);
	}

	@Override
	public boolean deletemytrip(int seq) {
		return dao.deletemytrip(seq)>0;
	}

	@Override
	public boolean updatemytrip(CalendarDto dto) {
		return  dao.updatemytrip(dto)>0;
	}

	@Override
	public List<CalendarDto> caldaylist(String yyyymmdd, String id) {
		return dao.caldaylist(yyyymmdd, id);
	}



	
	
	
}
