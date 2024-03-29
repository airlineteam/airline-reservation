package com.landers.airline.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.landers.airline.dao.ReservationDao;
import com.landers.airline.dto.FlightinfoDto;
import com.landers.airline.dto.ScheduleDto;
import com.landers.airline.dto.SeatDto;
import com.landers.airline.dto.TicketDto;
import com.landers.airline.dto.flightParam;
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

	@Override
	public int seatselect(List<String> selectedSeats, int flight_id) {
	    int totalUpdates = 0;

	    for (String seat : selectedSeats) {
	        int updates = dao.seatselect(seat, flight_id);
	        totalUpdates += updates;
	    }

	    return totalUpdates;
	}
	
	@Override
	public FlightinfoDto flightInfo(int flight_id) {
		return dao.flightInfo(flight_id);
	}

	@Override
	public int ticket(TicketDto dto) {
		return dao.ticket(dto);
	}

	@Override
	public TicketDto ticketinfo(int flight_id) {
		return dao.ticketinfo(flight_id);
	}

	@Override
	public int emptynumcount(flightParam param) {
		return dao.emptynumcount(param);
	}

	@Override
	public String departure(int flight_id) {
		return dao.departure(flight_id);
	}

	@Override
	public int reservationCal(String reservationCalendar, String user_id) {
		return dao.reservationCal(reservationCalendar, user_id);
	}

	



	
	

	
}
