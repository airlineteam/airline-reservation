package com.landers.airline.controller;

import java.util.Date;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.landers.airline.service.ManagerService;



@Controller
public class ManagerController {

	
	@Autowired
	ManagerService service;
	
	/*
	@GetMapping("managerMain.do")
	public String main(Model model) {
		System.out.println("ManagerController main() " + new Date());
		model.addAttribute("managerMain", "managerMain");
		
		return "managerpage/managerMain";
	}
	*/
	
	@GetMapping("managerHome.do")
	public String home(Model model) {
		System.out.println("ManagerController home() " + new Date());
		model.addAttribute("main", "managerHome");
		
		return "managerpage/main";
	}

}
