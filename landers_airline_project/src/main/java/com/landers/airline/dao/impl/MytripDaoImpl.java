package com.landers.airline.dao.impl;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.landers.airline.dao.MytripDao;
import com.landers.airline.dto.CalendarDto;
import com.mysql.cj.Session;

@Repository
public class MytripDaoImpl implements MytripDao{

	@Autowired
	SqlSession session;

	@Override
	public List<CalendarDto> calendarlist(CalendarDto dto) {
		return session.selectList("mytrip.calendarlist", dto);
	}

	@Override
	public String pp(CalendarDto dto) {
		return session.selectOne("pp", dto);
	}

	@Override
	public String p(CalendarDto dto) {
		return session.selectOne("p", dto);
	}

	@Override
	public String nn(CalendarDto dto) {
		return session.selectOne("nn", dto);
	}

	@Override
	public String n(CalendarDto dto) {
		return session.selectOne("n", dto);
	}

	@Override
	public int year(CalendarDto dto) {
		return session.insert("year", dto);
	}

	@Override
	public int month(CalendarDto dto) {
		return session.insert("month", dto);
	}

	@Override
	public int dayOfWeek(CalendarDto dto) {
		return session.insert("dayOfWeek", dto);
	}
}
