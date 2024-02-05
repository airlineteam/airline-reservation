package com.landers.airline.dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.landers.airline.dao.LoginDao;
import com.landers.airline.dto.UserDto;

@Repository
public class LoginDaoImpl implements LoginDao {

	@Autowired
	SqlSession sesession;

	@Override
	public UserDto loginAf(UserDto dto) {
		return  sesession.selectOne("Login.loginAf", dto);
	}
}
