package com.landers.airline.service;


import com.landers.airline.dto.UserDto;

public interface MyPageService {
	
	UserDto mylist(UserDto dto);
	
	boolean userUpdate(String user_id);
	
	boolean userDelete(String user_id);

}
