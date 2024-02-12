package com.landers.airline.dao.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.landers.airline.dao.ReservationDao;
import com.landers.airline.dto.FlightinfoDto;
import com.landers.airline.dto.ScheduleDto;
import com.landers.airline.dto.SeatDto;


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

	@Override
	public List<SeatDto> seatlist(int flight_id) {
		return session.selectList("reservation.seatlist", flight_id);
	}
	
	@Override
	public int seatselect(@Param("seatName") String seatName, @Param("flightId") int flightId) {
	    return session.update("seatselect", Map.of("seatName", seatName, "flightId", flightId));
	}
	

	@Override
	public FlightinfoDto flightInfo(int flight_id) {
		return session.selectOne("reservation.flightInfo",flight_id);
	}
	
	

}
