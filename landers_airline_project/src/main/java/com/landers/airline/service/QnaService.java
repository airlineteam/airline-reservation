package com.landers.airline.service;

import java.util.List;

import com.landers.airline.dto.QnaDto;
import com.landers.airline.dto.QnaParam;

public interface QnaService {

	List<QnaDto> qnalist(QnaParam param);	
	int allqna(QnaParam param);	
	boolean qnawrite(QnaDto dto);	
	QnaDto qnadetail(int seq);

	boolean QnaAnswer(QnaDto dto);
	
	boolean qnaupdate(QnaDto dto);
	boolean qnadelete(int seq);
}





