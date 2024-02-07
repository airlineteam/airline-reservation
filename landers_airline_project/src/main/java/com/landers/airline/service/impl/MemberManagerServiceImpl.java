package com.landers.airline.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.landers.airline.dao.MemberManagerDao;

import com.landers.airline.dto.UserDto;
import com.landers.airline.service.MemberManagerService;

@Service
public class MemberManagerServiceImpl implements MemberManagerService {

	
	@Autowired
	MemberManagerDao dao;

	

	@Override
	public List<UserDto> managerlist(UserDto dto) {
				return dao.managerlist(dto);
	}
	
	
}
