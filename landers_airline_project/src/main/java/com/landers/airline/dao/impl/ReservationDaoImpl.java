package com.landers.airline.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.landers.airline.dao.ReservationDao;
import com.landers.airline.dto.FlightinfoDto;
import com.landers.airline.dto.ScheduleDto;


@Repository
public class ReservationDaoImpl implements ReservationDao {

	@Autowired
	SqlSession session;

	@Override
	public int schedule(ScheduleDto dto) {
		return session.insert("reservation.schedule", dto);
	}

	@Override
	public List<FlightinfoDto> flightlist(FlightinfoDto dto) {
		return session.selectList("reservation.search", dto);
	}
	
	
	
	
}
