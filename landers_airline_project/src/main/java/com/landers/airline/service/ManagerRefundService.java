package com.landers.airline.service;

import java.util.List;

import com.landers.airline.dao.ManagerRefundDao;
import com.landers.airline.dto.RefundDto;

public interface ManagerRefundService {

	List<RefundDto> refundlist(RefundDto dto);
	
	int refundAf(int refund_id);
}
