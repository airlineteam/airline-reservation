package com.landers.airline.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.landers.airline.dao.FaqDao;
import com.landers.airline.dto.BbsComment;
import com.landers.airline.dto.FaqDto;
import com.landers.airline.dto.FaqParam;
import com.landers.airline.service.FaqService;


@Service
public class FaqServiceImpl implements FaqService{

	@Autowired
	FaqDao dao;

	@Override
	public List<FaqDto> faqlist(FaqParam param) {		
		return dao.faqlist(param);
	}

	@Override
	public int allfaq(FaqParam param) {		
		return dao.allfaq(param);
	}

	@Override
	public boolean faqwrite(FaqDto dto) {		
		return dao.faqwrite(dto)>0?true:false;
	}

	@Override
	public FaqDto faqdetail(int seq) {		
		return dao.faqdetail(seq);
	}

//	@Override
//	public boolean commentWrite(BbsComment com) {
//		int count = dao.commentWrite(com);
//		return count>0?true:false;
//	}
//
//	@Override
//	public List<BbsComment> commentList(int seq) {		
//		return dao.commentList(seq);
//	}
	
	@Override
	public boolean FaqAnswer(FaqDto dto) {
		dao.FaqAnswerUpdate(dto);		
		return dao.FaqAnswerInsert(dto)>0?true:false;
	}

	@Override
	public boolean faqupdate(FaqDto dto) {
		int count = dao.faqupdate(dto);
		return count>0?true:false;
	}

	@Override
	public boolean faqdelete(int seq) {	
		int count = dao.faqdelete(seq);
		return count>0?true:false;
	}
	
	
}
