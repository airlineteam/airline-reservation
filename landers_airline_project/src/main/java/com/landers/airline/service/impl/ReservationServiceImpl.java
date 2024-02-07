package com.landers.airline.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.landers.airline.dao.ReservationDao;
import com.landers.airline.dto.FlightinfoDto;
import com.landers.airline.dto.ScheduleDto;
import com.landers.airline.dto.SeatDto;
import com.landers.airline.service.ReservationService;


@Service
public class ReservationServiceImpl implements ReservationService {

	
	@Autowired
	ReservationDao dao;

	@Override
	public boolean schedule(ScheduleDto dto) {
		int count = dao.schedule(dto);
		return count>0?true:false;
	}

	@Override
	public List<FlightinfoDto> flightlist(FlightinfoDto dto) {
		return dao.flightlist(dto);
	}

	@Override
	public List<SeatDto> seatlist(int flight_id) {
		return dao.seatlist(flight_id);
	}
	
	
}
