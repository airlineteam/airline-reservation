package com.landers.airline.dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.landers.airline.dao.ReservationDao;


@Repository
public class ReservationDaoImpl implements ReservationDao {

	
	SqlSession session;
}
