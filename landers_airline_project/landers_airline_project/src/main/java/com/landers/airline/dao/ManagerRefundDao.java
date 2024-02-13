package com.landers.airline.dao;

import java.util.List;

import com.landers.airline.dto.RefundDto;

public interface ManagerRefundDao {

	List<RefundDto> refundlist (RefundDto dto);
	
	int refundAf(int refund_id);
}
