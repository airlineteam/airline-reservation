package com.landers.airline.dao;

import java.util.List;

import com.landers.airline.dto.BbsDto;
import com.landers.airline.dto.BbsParam;

public interface BbsDao {

	List<BbsDto> bbslist(BbsParam param);
	int allbbs(BbsParam param);	
	int bbswrite(BbsDto dto);	
	BbsDto bbsdetail(int seq);
	
	void BbsAnswerUpdate(BbsDto dto);
	int BbsAnswerInsert(BbsDto dto);
	
	int bbsupdate(BbsDto dto);
	int bbsdelete(int seq);	

	int bbsreadcount(int seq);
}




