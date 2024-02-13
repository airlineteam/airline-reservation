package com.landers.airline.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.landers.airline.service.CustomerCenterService;

@Controller
public class CustomerCenterController {

	
	@Autowired
	CustomerCenterService service;
	
	@GetMapping("customerHome.do")
	public String home(Model model) {
		System.out.println("CustomerCenterController home() " + new Date());
		model.addAttribute("main", "customerHome");
		
		return "customercenter/main";
	}
}
