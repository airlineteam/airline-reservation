package com.landers.airline.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.landers.airline.dao.BbsDao;
import com.landers.airline.dto.BbsComment;
import com.landers.airline.dto.BbsDto;
import com.landers.airline.dto.BbsParam;
import com.landers.airline.service.BbsService;

@Service
public class BbsServiceImpl implements BbsService{

	@Autowired
	BbsDao dao;

	@Override
	public List<BbsDto> bbslist(BbsParam param) {		
		return dao.bbslist(param);
	}

	@Override
	public int allbbs(BbsParam param) {		
		return dao.allbbs(param);
	}

	@Override
	public boolean bbswrite(BbsDto dto) {		
		return dao.bbswrite(dto)>0?true:false;
	}

	@Override
	public BbsDto bbsdetail(int seq) {		
		return dao.bbsdetail(seq);
	}

	@Override
	public boolean commentWrite(BbsComment com) {
		int count = dao.commentWrite(com);
		return count>0?true:false;
	}

	@Override
	public List<BbsComment> commentList(int seq) {		
		return dao.commentList(seq);
	}
	
	@Override
	public boolean BbsAnswer(BbsDto dto) {
		dao.BbsAnswerUpdate(dto);		
		return dao.BbsAnswerInsert(dto)>0?true:false;
	}

	@Override
	public boolean bbsupdate(BbsDto dto) {
		int count = dao.bbsupdate(dto);
		return count>0?true:false;
	}

	@Override
	public boolean bbsdelete(int seq) {	
		int count = dao.bbsdelete(seq);
		return count>0?true:false;
	}
	
	
}
