package com.landers.airline.controller;


import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.landers.airline.service.MainPageService;

@Controller
public class MainpageController {

	@Autowired
	MainPageService service;
	
	
	@GetMapping("home.do")
	public String home(Model model) {
		System.out.println("MemberController home() " + new Date());
		model.addAttribute("main", "home");
		
		return "mainpage/main";
	}
}
