package com.landers.airline.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.landers.airline.service.MyPageService;

@Controller
public class MyPageController {

	
	@Autowired
	MyPageService service;
	
	@GetMapping("mypageHome.do")
	public String home(Model model) {
		System.out.println("MyPageController home() " + new Date());
		model.addAttribute("main", "mypageHome");
		
		return "mypage/main";
	}
}
