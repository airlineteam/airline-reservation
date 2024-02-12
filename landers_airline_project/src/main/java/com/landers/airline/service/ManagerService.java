package com.landers.airline.service;

import java.util.List;

import com.landers.airline.dto.ManagerDto;
import com.landers.airline.dto.QnaChartDto;
import com.landers.airline.dto.cityChartDto;

public interface ManagerService {

	List<ManagerDto> priceChart(ManagerDto dto);
	
	List<cityChartDto> cityChart(cityChartDto dto);
	
	List<QnaChartDto> qnaChart(QnaChartDto dto);
}
