package com.landers.airline.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.landers.airline.dao.ManagerQnaDao;
import com.landers.airline.dto.ManagerQnaDto;
import com.landers.airline.dto.ManagerQnaParam;
import com.landers.airline.service.ManagerQnaService;

@Service
public class ManagerQnaServiceImpl implements ManagerQnaService {

	

	@Autowired
	ManagerQnaDao dao;

	@Override
	public List<ManagerQnaDto> qnalist(ManagerQnaParam param) {
		return dao.qnalist(param);
		}

	@Override
	public int allqna(ManagerQnaParam param) {
		return dao.allqna(param);
	}

	@Override
	public ManagerQnaDto qnadetail(int seq) {
		return dao.qnadetail(seq);
	}

	@Override
	public boolean qnadelete(int seq) {
		int count = dao.qnadelete(seq);
		return count>0?true:false;
	}
	
	

}
