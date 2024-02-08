package com.landers.airline.service;

import java.util.List;


import com.landers.airline.dto.UserDto;

public interface MemberManagerService {

	List<UserDto> managerlist(UserDto dto);

	
	boolean deleteUser(UserDto dto);


}
