package com.landers.airline.dao;

import java.util.List;


import com.landers.airline.dto.UserDto;

public interface MemberManagerDao {
	
	List<UserDto> managerlist(UserDto dto);

}
