package com.landers.airline.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.landers.airline.dao.MytripDao;
import com.landers.airline.dto.CalendarDto;

@Repository
public class MytripDaoImpl implements MytripDao{

	@Autowired
	SqlSession session;

	@Override
	public List<CalendarDto> calendarlist(CalendarDto dto) {
		return session.selectList("mytrip.calendarlist", dto);
	}

}
