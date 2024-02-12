package com.landers.airline.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.landers.airline.dto.RefundDto;
import com.landers.airline.service.ManagerRefundService;

@Controller
public class ManagerRefundController {

	
	@Autowired
	ManagerRefundService service;
	
	
	@GetMapping("refundManager.do")
	public String refundlist(RefundDto dto, Model model) {
	System.out.println("ManagerRefundController refundList " + new Date());
	
	List<RefundDto> list = service.refundlist(dto);
	System.out.println(list.toString());
	
	model.addAttribute("list",list);
	model.addAttribute("main","refundManager");

			
	return "managerpage/main";
	}
	
	
	@GetMapping("refundAf.do")
	public String refundAf(RefundDto dto ,int refund_id, Model model) {
		System.out.println("ManagerRefundController refundAf " + new Date());
		
		int count = service.refundAf(refund_id);
		
		List<RefundDto> list = service.refundlist(dto);
		System.out.println(list.toString());
		
		model.addAttribute("list",list);
		
		return "managerpage/refundManager"; 
	}
}
