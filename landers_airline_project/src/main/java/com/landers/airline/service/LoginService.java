package com.landers.airline.service;

import com.landers.airline.dto.UserDto;

public interface LoginService {

	UserDto loginAf(UserDto dto);
	
	UserDto loginOut(UserDto dto);
	
	boolean idcheck(String user_id);	
	
	boolean adduser(UserDto dto);
	
}
