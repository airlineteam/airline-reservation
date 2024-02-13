package com.landers.airline.dao;


import com.landers.airline.dto.UserDto;

public interface MyPageDao {
	
	UserDto mylist(String user_id);
	
	int userDelete(String user_id);
	
	int userUpdate(UserDto dto);
	

}
