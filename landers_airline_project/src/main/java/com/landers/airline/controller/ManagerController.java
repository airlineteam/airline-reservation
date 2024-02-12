package com.landers.airline.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.landers.airline.dto.ManagerDto;
import com.landers.airline.dto.QnaChartDto;
import com.landers.airline.dto.cityChartDto;
import com.landers.airline.service.ManagerService;




@Controller
public class ManagerController {

	
	@Autowired
	ManagerService service;
	

	@GetMapping("managerHome.do")
	public String home(ManagerDto dto,cityChartDto cdto,QnaChartDto qdto,Model model) {
		System.out.println("ManagerController home() " + new Date());
		model.addAttribute("main", "managerHome");
		
		List<ManagerDto> list = service.priceChart(dto);
		model.addAttribute("list" , list);
		
		
		List<cityChartDto> city = service.cityChart(cdto);
		model.addAttribute("city",city);
		
		List<QnaChartDto> qna = service.qnaChart(qdto);
		model.addAttribute("qna" , qna);
		
	
		return "managerpage/main";
	}
	


	
	
	

	 

}
