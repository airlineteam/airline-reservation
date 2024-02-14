package com.landers.airline.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.landers.airline.dao.MyPageDao;
import com.landers.airline.dto.RefundDto;
import com.landers.airline.dto.TicketDto;
import com.landers.airline.dto.UserDto;
import com.landers.airline.service.MyPageService;


@Service
public class MyPageServiceImpl implements MyPageService {

	@Autowired
	MyPageDao dao;

	@Override
	public boolean userUpdate(UserDto dto) {
		
		int count = dao.userUpdate(dto);
		return count>0?true:false;
	}

	@Override
	public boolean userDelete(String user_id) {
		
		int count = dao.userDelete(user_id);
		return count>0?true:false;
	}

	@Override
	public UserDto mylist(String user_id) {
		return dao.mylist(user_id);
	}

	@Override
	public List<TicketDto> myTicket(TicketDto dto) {
		return dao.myTicket(dto);
	}

	@Override
	public List<RefundDto> myRefund(RefundDto dto) {
		return dao.myRefund(dto);
	}

	@Override
	public boolean userRefund(RefundDto dto) {
		
		int count = dao.userRefund(dto);
		return count>0?true:false;
	}

}
