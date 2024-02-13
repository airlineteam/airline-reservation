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

	@Override
	public boolean idcheck(String user_id) {
		int count = dao.idcheck(user_id);
		return count>0?true:false;
	}

	@Override
	public boolean adduser(UserDto dto) {
		int count = dao.adduser(dto);
		return count>0?true:false;
	}

	@Override
	public UserDto loginOut(UserDto dto) {
		return dao.logOut(dto);
	}




}
