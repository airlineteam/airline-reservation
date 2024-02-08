package com.landers.airline.dao.impl;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.landers.airline.dao.MyPageDao;
import com.landers.airline.dto.UserDto;


@Repository
public class MyPageDaoImpl implements MyPageDao {

	
	@Autowired
	SqlSession session;

	@Override
	public int userUpdate(String user_id) {
		return session.selectOne("mypage.userUpdate", user_id);
	}

	@Override
	public int userDelete(String user_id) {
		
		return session.selectOne("mypage.userDelete", user_id);
	}

	@Override
	public UserDto mylist(UserDto dto) {
		
		return session.selectOne("mypage.mylist", dto);
	}


	
}
