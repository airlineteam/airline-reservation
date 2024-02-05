package com.landers.airline.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.landers.airline.dao.LoginDao;
import com.landers.airline.dto.UserDto;
import com.landers.airline.service.LoginService;

@Service
public class LoginServiceImpl implements LoginService{
	
	@Autowired
      LoginDao dao;

	@Override
	public UserDto loginAf(UserDto dto) {
		return dao.loginAf(dto);
	}




}
