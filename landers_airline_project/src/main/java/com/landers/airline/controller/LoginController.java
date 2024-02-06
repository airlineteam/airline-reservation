package com.landers.airline.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.landers.airline.dto.UserDto;
import com.landers.airline.service.LoginService;

@Controller
public class LoginController {

	@Autowired
	LoginService service;	// Login으로 바꿀 것!
	
	@GetMapping("login.do")
	public String login() {
		return "login/login";
	}
	
	@PostMapping("loginAf.do")
	public String loginAf(UserDto dto, Model model, HttpServletRequest request) {
		System.out.println("LoginController loginAf " + new Date());
		System.out.println(dto.toString());
		
		UserDto user = service.loginAf(dto);
			
		String loginMsg = "LOGIN_FAIL";
		if(user != null) {	// 로그인 성공
			request.getSession().setAttribute("login", dto);
			request.getSession().setMaxInactiveInterval(60*60*24);
			loginMsg = "LOGIN_SUCCESS";
		}else {
			loginMsg = "LOGIN_FAIL";
		}
		
		model.addAttribute("loginMsg", loginMsg);
		
		return "message";
	}
	
	
}
