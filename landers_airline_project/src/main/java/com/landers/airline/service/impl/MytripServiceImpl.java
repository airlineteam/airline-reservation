package com.landers.airline.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.landers.airline.dao.MytripDao;
import com.landers.airline.service.MytripService;

@Service
public class MytripServiceImpl implements MytripService{

	@Autowired
	MytripDao dao;
}
