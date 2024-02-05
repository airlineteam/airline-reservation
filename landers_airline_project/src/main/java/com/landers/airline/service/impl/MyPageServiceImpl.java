package com.landers.airline.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.landers.airline.dao.MyPageDao;
import com.landers.airline.service.MyPageService;


@Service
public class MyPageServiceImpl implements MyPageService {

	@Autowired
	MyPageDao dao;
}
