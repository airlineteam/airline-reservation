package com.landers.airline.dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.landers.airline.dao.CustomerCenterDao;


@Repository
public class CustomerCenterDaoImpl implements CustomerCenterDao {

	
	@Autowired
	SqlSession session;
}
