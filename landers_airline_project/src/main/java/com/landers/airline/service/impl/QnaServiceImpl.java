package com.landers.airline.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.landers.airline.dao.QnaDao;
import com.landers.airline.dto.QnaDto;
import com.landers.airline.dto.QnaParam;
import com.landers.airline.service.QnaService;

@Service
public class QnaServiceImpl implements QnaService{

	@Autowired
	QnaDao dao;

	@Override
	public List<QnaDto> qnalist(QnaParam param) {		
		return dao.qnalist(param);
	}

	@Override
	public int allqna(QnaParam param) {		
		return dao.allqna(param);
	}

	@Override
	public boolean qnawrite(QnaDto dto) {		
		return dao.qnawrite(dto)>0?true:false;
	}

	@Override
	public QnaDto qnadetail(int seq) {		
		return dao.qnadetail(seq);
	}

	@Override
	public boolean QnaAnswer(QnaDto dto) {
		dao.QnaAnswerUpdate(dto);		
		return dao.QnaAnswerInsert(dto)>0?true:false;
	}

	@Override
	public boolean qnaupdate(QnaDto dto) {
		int count = dao.qnaupdate(dto);
		return count>0?true:false;
	}

	@Override
	public boolean qnadelete(int seq) {	
		int count = dao.qnadelete(seq);
		return count>0?true:false;
	}
	
	
}
