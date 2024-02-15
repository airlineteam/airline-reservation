package com.landers.airline.dao;


import java.util.List;


import com.landers.airline.dto.RefundDto;
import com.landers.airline.dto.TicketDto;
import com.landers.airline.dto.TicketParam;
import com.landers.airline.dto.UserDto;

public interface MyPageDao {
	
	UserDto mylist(String user_id);
	
	int userDelete(String user_id);
	
	int userUpdate(UserDto dto);

	List<TicketDto> myTicket(TicketDto dto);
	
	List<RefundDto> myRefund(RefundDto dto);
	
	int userRefund(RefundDto dto);
	
	int allTicket(TicketParam param);
	
	List<TicketDto> Ticketlist(TicketParam param);


}
