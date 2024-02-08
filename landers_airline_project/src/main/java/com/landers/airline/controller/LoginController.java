package com.landers.airline.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.landers.airline.dto.UserDto;
import com.landers.airline.service.LoginService;

@Controller
public class LoginController {

	@Autowired
	LoginService service;
	@GetMapping("login.do")
	public String login(Model model) {
		
		model.addAttribute("main", "login/login");
		
		return "mainpage/main";
	}
	
	@PostMapping("loginAf.do")
	public String loginAf(UserDto dto, Model model, HttpServletRequest request) {
		System.out.println("LoginController loginAf " + new Date());
		System.out.println(dto.toString());
		
		UserDto user = service.loginAf(dto);
			
		String loginMsg = "LOGIN_FAIL";

		if(user != null) {	// 로그인 성공
			request.getSession().invalidate(); //Session 삭제
			System.out.println("세션이 삭제됨:" + new Date());
	        
			request.getSession().setAttribute("login", user);
			System.out.println("세션이 생성됨:" + new Date());

			request.getSession().setMaxInactiveInterval(60*60*24);
			loginMsg = "LOGIN_SUCCESS";
		}else {
			loginMsg = "LOGIN_FAIL";
		}
		
		model.addAttribute("loginMsg", loginMsg);
		
		return "message";
	}
	
	
	@GetMapping("regi.do")
	public String regi() {
		System.out.println("LoginController regi " + new Date());		
		return "login/regi";
	}
	
	@PostMapping("regiAf.do")
	public String regiAf(UserDto dto, Model model) {
		System.out.println("LoginController regiAf " + new Date());
		System.out.println(dto.toString());
		
		boolean isS = service.adduser(dto);
		String regiMsg = "USER_YES";
		if(!isS) {
			regiMsg = "USER_NO";
		}
		
		model.addAttribute("regiMsg", regiMsg);
		
		return "message";
	}
	
	
	@ResponseBody
	@GetMapping("idcheck.do")
	public String idcheck(String User_id) {
		System.out.println("LoginController idcheck " + new Date());
		
		boolean isS = service.idcheck(User_id);
		if(isS) {
			return "NO";
		}
		
		return "YES";
	}
	
	@GetMapping("logOut.do")
	public String logOut(HttpServletRequest request) {
		request.getSession().invalidate(); //Session 삭제
		System.out.println("세션이 삭제됨:" + new Date());
		return "mainpage/main";
	}
}
