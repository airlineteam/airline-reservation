package com.landers.airline.dao.impl;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.landers.airline.dao.MyPageDao;
import com.landers.airline.dto.BbsParam;
import com.landers.airline.dto.RefundDto;
import com.landers.airline.dto.TicketDto;
import com.landers.airline.dto.TicketParam;
import com.landers.airline.dto.UserDto;


@Repository
public class MyPageDaoImpl implements MyPageDao {

	
	@Autowired
	SqlSession session;

	@Override
	public int userUpdate(UserDto dto) {
		return session.update("mypage.userUpdate", dto);
}

	@Override
	public int userDelete(String user_id) {
		
		return session.delete("mypage.userDelete", user_id);
	}

	@Override
	public UserDto mylist(String user_id) {
		
		return session.selectOne("mypage.mylist", user_id);

	}

	@Override
	public List<TicketDto> myTicket(TicketDto dto) {
		return session.selectList("mypage.myTicket" , dto);
	}

	@Override
	public List<RefundDto> myRefund(RefundDto dto) {
		return session.selectList("mypage.myRefund" , dto);
	}

	@Override
	public int userRefund(RefundDto dto) {
		return session.update("mypage.userRefund", dto);
}

	@Override
	public int allTicket(TicketParam param) {
		return session.selectOne("mypage.allTicket", param);
	}


	
}
