package com.landers.airline.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.landers.airline.service.MytripService;

@Controller
public class MytripController {
	
	@Autowired
	MytripService service;
	
	@GetMapping("mytrip.do")
	public String home(Model model) {
		System.out.println("MytripController home() " + new Date());
		model.addAttribute("main", "mytripHome");
		
		return "mytrip/main";
	}

}
