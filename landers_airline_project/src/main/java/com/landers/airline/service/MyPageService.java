package com.landers.airline.service;


import com.landers.airline.dto.UserDto;

public interface MyPageService {
	
	UserDto mylist(String user_id);
	
	boolean userUpdate(UserDto dto);
	
	boolean userDelete(String user_id);


}
