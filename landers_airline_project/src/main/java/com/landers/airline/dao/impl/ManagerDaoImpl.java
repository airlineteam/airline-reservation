package com.landers.airline.dao.impl;





import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.landers.airline.dao.ManagerDao;
import com.landers.airline.dto.ManagerDto;
import com.landers.airline.dto.QnaChartDto;
import com.landers.airline.dto.cityChartDto;


@Repository
public class ManagerDaoImpl implements ManagerDao{

	@Autowired
	SqlSession session;

	
	String ns = "manager.";


	@Override
	public List<ManagerDto> priceChart(ManagerDto dto) {
				return session.selectList(ns + "managerHome" , dto);
	}


	@Override
	public List<cityChartDto> cityChart(cityChartDto dto) {
				return session.selectList(ns + "cityChart", dto);
	}


	@Override
	public List<QnaChartDto> qnaChart(QnaChartDto dto) {
				return session.selectList(ns + "qnaChart" , dto);
	}
	


	


	
	

	
}
