package com.landers.airline.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.landers.airline.dao.FaqDao;
import com.landers.airline.dto.FaqDto;
import com.landers.airline.dto.FaqParam;

@Repository
public class FaqDaoImpl implements FaqDao{

	@Autowired
	SqlSession session;
	
	String ns = "Faq.";

	@Override
	public List<FaqDto> faqlist(FaqParam param) {		
		return session.selectList(ns + "faqlist", param);
	}

	@Override
	public int allfaq(FaqParam param) {		
		return session.selectOne(ns + "allfaq", param);
	}

	@Override
	public int faqwrite(FaqDto dto) {
		int count = session.insert(ns + "faqwrite", dto);
		return count;
	}

	@Override
	public FaqDto faqdetail(int seq) {		
		return session.selectOne(ns + "faqdetail", seq);
	}

	
	@Override
	public void FaqAnswerUpdate(FaqDto dto) {
		session.update(ns + "FaqAnswerUpdate", dto);
	}

	@Override
	public int FaqAnswerInsert(FaqDto dto) {		
		return session.insert(ns + "FaqAnswerInsert", dto);
	}

	@Override
	public int faqupdate(FaqDto dto) {		
		return session.update(ns + "faqupdate", dto);
	}

	@Override
	public int faqdelete(int seq) {		
		return session.update(ns + "faqdelete", seq);
	}
	
	
}





