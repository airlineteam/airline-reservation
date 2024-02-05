package com.landers.airline.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.landers.airline.dao.ReservationDao;
import com.landers.airline.service.ReservationService;


@Service
public class ReservationServiceImpl implements ReservationService {

	
	@Autowired
	ReservationDao dao;
}
