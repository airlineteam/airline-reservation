package com.landers.airline.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.landers.airline.dao.ManagerRefundDao;
import com.landers.airline.dto.RefundDto;
import com.landers.airline.service.ManagerRefundService;


@Service
public class ManagerRefundServiceImpl implements ManagerRefundService {

	@Autowired
	ManagerRefundDao dao;

	@Override
	public List<RefundDto> refundlist(RefundDto dto) {
				return dao.refundlist(dto);
	}

	@Override
	public int refundAf(int refund_id) {
		return dao.refundAf(refund_id);
				
	}

	

	
	
}
