package com.landers.airline.dao;

import java.util.List;

import com.landers.airline.dto.ManagerQnaDto;
import com.landers.airline.dto.ManagerQnaParam;

public interface ManagerQnaDao {

	List<ManagerQnaDto> qnalist(ManagerQnaParam param);
	
	int allqna(ManagerQnaParam param);	
	
	ManagerQnaDto qnadetail(int seq);
	
	int qnadelete(int seq);
}
