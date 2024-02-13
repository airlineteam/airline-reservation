package com.landers.airline.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.landers.airline.dao.ManagerQnaDao;
import com.landers.airline.dto.ManagerQnaDto;
import com.landers.airline.dto.ManagerQnaParam;
import com.landers.airline.dto.QnaDto;
import com.landers.airline.dto.QnaParam;

@Repository
public class ManagerQnaDaoImpl implements ManagerQnaDao {
	
	@Autowired
	SqlSession session;
	
	String ns = "managerqna.";

	@Override
	public List<ManagerQnaDto> qnalist(ManagerQnaParam param) {
		return session.selectList(ns + "qnalist", param);
	}

	@Override
	public int allqna(ManagerQnaParam param) {
		return session.selectOne(ns + "allqna", param);
	}

	@Override
	public ManagerQnaDto qnadetail(int seq) {
		return session.selectOne(ns + "qnadetail", seq);
	}

	@Override
	public int qnadelete(int seq) {
		return session.update(ns + "qnadelete", seq);
	}

}
