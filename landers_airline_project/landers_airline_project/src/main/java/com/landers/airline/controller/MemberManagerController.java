package com.landers.airline.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


import com.landers.airline.dto.UserDto;
import com.landers.airline.service.MemberManagerService;

@Controller
public class MemberManagerController {

	@Autowired
	MemberManagerService service;
	
//	@GetMapping("MemberManager.do")
//	public String home(Model model) {
//		System.out.println("MemberManagerController home() " + new Date());
//		model.addAttribute("main", "MemberManager");
//		
//	
//		return "managerpage/MemberManager";
//	}
	
	@GetMapping("MemberManager.do")
	public String memberList(UserDto dto, Model model) {
		System.out.println("MemberManagerController memberList " + new Date());
		List<UserDto> list = service.managerlist(dto);
		System.out.println(list.toString());
		
		model.addAttribute("list",list);

				
		return "managerpage/MemberManager"; 
	}
	
	
	@GetMapping("deleteUserAf.do")
	public String deleteUser(UserDto dto, Model model) {
		System.out.println("MemberManagerController 	deleteUser " + new Date());
			
		boolean isS = service.deleteUser(dto);
		String deleteUser = "DELETEUSER_YES";
		if(!isS) {
			deleteUser = "DELETEUSER_NO";
		}
		
		model.addAttribute("deleteUser", deleteUser);
		
		return "message"; 
	}
}

	


