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
	public int userUpdate(UserDto dto) {
		return session.update("mypage.userUpdate", dto);
}

	@Override
	public int userDelete(String user_id) {
		
		return session.delete("mypage.userDelete", user_id);
	}

	@Override
	public UserDto mylist(String user_id) {
		
		return session.selectOne("mypage.mylist", user_id);
	}


	
}
