package com.landers.airline.dao.impl;





import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.landers.airline.dao.ManagerDao;
import com.landers.airline.dto.ManagerDto;


@Repository
public class ManagerDaoImpl implements ManagerDao{

	@Autowired
	SqlSession session;

	
	String ns = "manager.";
	

	
}
