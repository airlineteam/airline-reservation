package com.landers.airline.service;

import java.util.List;

import com.landers.airline.dto.ManagerQnaDto;
import com.landers.airline.dto.ManagerQnaParam;

public interface ManagerQnaService {
	
	List<ManagerQnaDto> qnalist(ManagerQnaParam param);	
	
	int allqna(ManagerQnaParam param);	
	
	ManagerQnaDto qnadetail(int seq);
	
	boolean qnadelete(int seq);

}
