package com.landers.airline.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.landers.airline.dao.ManagerDao;
import com.landers.airline.service.ManagerService;

@Service
public class ManagerServiceImpl implements ManagerService{

	
	@Autowired
	ManagerDao dao; 
}
