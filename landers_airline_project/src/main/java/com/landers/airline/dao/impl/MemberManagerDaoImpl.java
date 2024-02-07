package com.landers.airline.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.landers.airline.dao.MemberManagerDao;

import com.landers.airline.dto.UserDto;

@Repository
public class MemberManagerDaoImpl implements MemberManagerDao {

	@Autowired
	SqlSession session;
	
	String ns = "manager.";

	@Override
	public List<UserDto> managerlist(UserDto dto) {
				return session.selectList(ns +"MemberManager" , dto);
	}
	
}
