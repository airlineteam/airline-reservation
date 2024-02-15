package com.landers.airline.dao.impl;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.landers.airline.dao.MytripDao;
import com.landers.airline.dto.CalendarDto;
import com.mysql.cj.Session;

@Repository
public class MytripDaoImpl implements MytripDao{

	@Autowired
	SqlSession session;

	@Override
	public List<CalendarDto> insertmytrip(CalendarDto dto) {
		return session.selectList("mytrip.insertmytrip", dto);
	}

	@Override
	public int writemytrip(CalendarDto dto) {
		return session.insert("mytrip.writemytrip", dto);
	}

	@Override
	public CalendarDto showmytrip(int seq) {
		return session.selectOne("mytrip.showmytrip", seq);
	}

	@Override
	public int deletemytrip(int seq) {
		return session.delete("mytrip.deletemytrip", seq);
	}

	@Override
	public int updatemytrip(CalendarDto dto) {
		return session.update("mytrip.updatemytrip", dto);
	}


	

}
