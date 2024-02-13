package com.landers.airline.dao;

import com.landers.airline.dto.UserDto;

public interface MyPageDao {
	
	UserDto mylist(UserDto dto);
	
	int userUpdate(String user_id);
	int userDelete(String user_id);
}
