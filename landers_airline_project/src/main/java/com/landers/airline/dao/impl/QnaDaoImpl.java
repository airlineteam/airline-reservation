package com.landers.airline.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.landers.airline.dao.QnaDao;
import com.landers.airline.dto.QnaComment;
import com.landers.airline.dto.QnaDto;
import com.landers.airline.dto.QnaParam;

@Repository
public class QnaDaoImpl implements QnaDao{

	@Autowired
	SqlSession session;
	
	String ns = "Qna.";

	@Override
	public List<QnaDto> qnalist(QnaParam param) {		
		return session.selectList(ns + "qnalist", param);
	}

	@Override
	public int allqna(QnaParam param) {		
		return session.selectOne(ns + "allqna", param);
	}

	@Override
	public int qnawrite(QnaDto dto) {
		int count = session.insert(ns + "qnawrite", dto);
		return count;
	}

	@Override
	public QnaDto qnadetail(int seq) {		
		return session.selectOne(ns + "qnadetail", seq);
	}

	@Override
	public int commentWrite(QnaComment com) {		
		return session.insert(ns + "commentWrite", com);
	}
	
	@Override
	public int commentDelete(int seq) {
		return session.delete(ns + "commentDelete", seq);
	}
	
	@Override
	public List<QnaComment> commentList(int seq) {		
		return session.selectList(ns + "commentList", seq);
	}
		
	@Override
	public void QnaAnswerUpdate(QnaDto dto) {
		session.update(ns + "QnaAnswerUpdate", dto);
	}

	@Override
	public int QnaAnswerInsert(QnaDto dto) {		
		return session.insert(ns + "QnaAnswerInsert", dto);
	}

	@Override
	public int qnaupdate(QnaDto dto) {		
		return session.update(ns + "qnaupdate", dto);
	}

	@Override
	public int qnadelete(int seq) {		
		return session.update(ns + "qnadelete", seq);
	}
	
	
}





