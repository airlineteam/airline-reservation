package com.landers.airline.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.landers.airline.dao.BbsDao;
import com.landers.airline.dto.BbsDto;
import com.landers.airline.dto.BbsParam;

@Repository
public class BbsDaoImpl implements BbsDao{

	@Autowired
	SqlSession session;
	
	String ns = "Bbs.";

	@Override
	public List<BbsDto> bbslist(BbsParam param) {		
		return session.selectList(ns + "bbslist", param);
	}

	@Override
	public int allbbs(BbsParam param) {		
		return session.selectOne(ns + "allbbs", param);
	}

	@Override
	public int bbswrite(BbsDto dto) {
		int count = session.insert(ns + "bbswrite", dto);
		return count;
	}

	@Override
	public BbsDto bbsdetail(int seq) {		
		return session.selectOne(ns + "bbsdetail", seq);
	}
	
	@Override
	public void BbsAnswerUpdate(BbsDto dto) {
		session.update(ns + "BbsAnswerUpdate", dto);
	}

	@Override
	public int BbsAnswerInsert(BbsDto dto) {		
		return session.insert(ns + "BbsAnswerInsert", dto);
	}

	@Override
	public int bbsupdate(BbsDto dto) {		
		return session.update(ns + "bbsupdate", dto);
	}

	@Override
	public int bbsdelete(int seq) {		
		return session.update(ns + "bbsdelete", seq);
	}
	
	
}





