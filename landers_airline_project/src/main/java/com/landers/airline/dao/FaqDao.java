package com.landers.airline.dao;

import java.util.List;

import com.landers.airline.dto.BbsComment;
import com.landers.airline.dto.FaqDto;
import com.landers.airline.dto.FaqParam;

public interface FaqDao {

	List<FaqDto> faqlist(FaqParam param);
	int allfaq(FaqParam param);	
	int faqwrite(FaqDto dto);	
	FaqDto faqdetail(int seq);
	
	int commentWrite(BbsComment com);
	List<BbsComment> commentList(int seq);
	
	void FaqAnswerUpdate(FaqDto dto);
	int FaqAnswerInsert(FaqDto dto);
	
	int faqupdate(FaqDto dto);
	int faqdelete(int seq);
}




