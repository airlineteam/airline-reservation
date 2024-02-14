package com.landers.airline.service;


import java.util.List;

import com.landers.airline.dto.RefundDto;
import com.landers.airline.dto.TicketDto;
import com.landers.airline.dto.UserDto;

public interface MyPageService {
	
	UserDto mylist(String user_id);
	
	boolean userUpdate(UserDto dto);
	
	boolean userDelete(String user_id);
	
	List<TicketDto> myTicket(TicketDto dto);

	List<RefundDto> myRefund(RefundDto dto);
	
	boolean userRefund(RefundDto dto);


}
