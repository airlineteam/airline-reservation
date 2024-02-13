package com.landers.airline.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


import com.landers.airline.dto.ManagerDto;
import com.landers.airline.service.ManagerService;
import org.springframework.web.bind.annotation.RequestParam;




@Controller
public class ManagerController {

	
	@Autowired
	ManagerService service;
	

	@GetMapping("managerHome.do")
	public String home(Model model) {
		System.out.println("ManagerController home() " + new Date());
		model.addAttribute("main", "managerHome");
		
	
		return "managerpage/main";
	}
	
	

	
	
	

	 

}
