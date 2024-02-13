package com.landers.airline.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.landers.airline.dao.CustomerCenterDao;
import com.landers.airline.service.CustomerCenterService;


@Service
public class CustomerCenterServiceImpl implements CustomerCenterService {

	
	@Autowired
	CustomerCenterDao dao;
}
