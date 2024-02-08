package com.landers.airline.service;

import java.util.List;

import com.landers.airline.dto.BbsComment;
import com.landers.airline.dto.FaqDto;
import com.landers.airline.dto.FaqParam;

public interface FaqService {

	List<FaqDto> faqlist(FaqParam param);	
	int allfaq(FaqParam param);	
	boolean faqwrite(FaqDto dto);	
	FaqDto faqdetail(int seq);
	
	boolean commentWrite(BbsComment com);
	List<BbsComment> commentList(int seq);
	
	boolean FaqAnswer(FaqDto dto);
	
	boolean faqupdate(FaqDto dto);
	boolean faqdelete(int seq);
}





