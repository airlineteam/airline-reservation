package com.landers.airline.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.landers.airline.dao.ManagerRefundDao;
import com.landers.airline.dto.RefundDto;


@Repository
public class ManagerRefundDaoImpl implements ManagerRefundDao {

	
	@Autowired
	SqlSession session;
	
	String ns = "refund.";

	@Override
	public List<RefundDto> refundlist(RefundDto dto) {
				return session.selectList(ns + "refundManager" ,dto);
	}

	@Override
	public int refundAf(int refund_id) {
				return session.update(ns + "refundAf" , refund_id);
	}
	
	
}
