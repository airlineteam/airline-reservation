package com.landers.airline.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.landers.airline.dto.CalendarDto;
import com.landers.airline.service.MytripService;

import util.CalendarUtil;

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
	
	@PostMapping("calendarlist.do")
	public String calendarlist(CalendarDto dto, Model model, CalendarUtil util) {
		System.out.println("MytripController calendarlist() " + new Date());
		List<CalendarDto> list = service.calendarlist(dto);
		
		System.out.println(list.toString());
		
		model.addAttribute("list", list);
		model.addAttribute("util", util);
		
		return "mytrip/main";
	}

}
