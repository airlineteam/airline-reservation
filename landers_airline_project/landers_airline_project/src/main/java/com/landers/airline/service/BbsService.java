package com.landers.airline.service;

import java.util.List;

import com.landers.airline.dto.BbsComment;
import com.landers.airline.dto.BbsDto;
import com.landers.airline.dto.BbsParam;

public interface BbsService {

	List<BbsDto> bbslist(BbsParam param);	
	int allbbs(BbsParam param);	
	boolean bbswrite(BbsDto dto);	
	BbsDto bbsdetail(int seq);
	
	boolean commentWrite(BbsComment com);
	List<BbsComment> commentList(int seq);
	
	boolean BbsAnswer(BbsDto dto);
	
	boolean bbsupdate(BbsDto dto);
	boolean bbsdelete(int seq);
}





