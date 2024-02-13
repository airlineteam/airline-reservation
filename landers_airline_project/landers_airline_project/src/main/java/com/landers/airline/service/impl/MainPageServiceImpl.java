package com.landers.airline.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.landers.airline.dao.MainPageDao;
import com.landers.airline.service.MainPageService;

@Service
public class MainPageServiceImpl implements MainPageService {

	@Autowired
	MainPageDao dao;
}
