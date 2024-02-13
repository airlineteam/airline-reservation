package com.landers.airline.dao;

import com.landers.airline.dto.UserDto;

public interface LoginDao {
	
	int idcheck(String user_id);
	
	int adduser(UserDto dto);

	UserDto loginAf(UserDto dto);
	
	UserDto logOut(UserDto dto);
}
