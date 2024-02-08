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
	public int idcheck(String user_id) {
		return sesession.selectOne("Login.idcheck", user_id);
		
	}

	@Override
	public UserDto loginAf(UserDto dto) {
		return  sesession.selectOne("Login.loginAf", dto);
	}

	@Override
	public int adduser(UserDto dto) {
		return sesession.insert("Login.adduser", dto);
	}

	@Override
	public UserDto logOut(UserDto dto) {
		return sesession.selectOne("Login.loginOut", dto);
	}

}
