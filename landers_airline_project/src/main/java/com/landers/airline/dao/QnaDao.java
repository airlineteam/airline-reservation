package com.landers.airline.dao;

import java.util.List;

import com.landers.airline.dto.QnaDto;
import com.landers.airline.dto.QnaParam;

public interface QnaDao {

	List<QnaDto> qnalist(QnaParam param);
	int allqna(QnaParam param);	
	int qnawrite(QnaDto dto);	
	QnaDto qnadetail(int seq);

	void QnaAnswerUpdate(QnaDto dto);
	int QnaAnswerInsert(QnaDto dto);
	
	int qnaupdate(QnaDto dto);
	int qnadelete(int seq);
}




