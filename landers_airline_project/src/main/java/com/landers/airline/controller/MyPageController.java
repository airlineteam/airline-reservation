package com.landers.airline.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.landers.airline.dto.UserDto;
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
	
	@GetMapping("mylist.do")
	public String mylist( String user_id,  Model model) {
		System.out.println("MyPageController mylist() " + new Date());
		
		UserDto mylist = service.mylist(user_id);
		
		model.addAttribute("mylist",mylist);

		
		return "mypage/mypageHome";
	}
	
	
//	  @GetMapping("userUpdate.do")
//	  public String userUpdate( UserDto dto, Model model) { 
//		  System.out.println("mypageController userUpdate() " + new Date());
//		  System.out.println(dto.toString());
//	  
//		  boolean userUpdate = service.userUpdate(dto);
//		  model.addAttribute("userUpdate", userUpdate);
//	  
//		  return "mainpage/main"; 
//	  }
	 
	
	
	 @PostMapping("userUpdate.do")
	 public String userUpdate(UserDto dto, Model model) { 
		 
		 System.out.println("mypageController userUpdate() " + new Date());
	 
		 boolean isS = service.userUpdate(dto); 
		 String updateMsg = "UPDATE_SUCCESS";
		 if(isS == false) { updateMsg = "UPDATE_FAIL"; }
		 
		 model.addAttribute("updateMsg", updateMsg);
		 model.addAttribute("user_id", dto);
	 
		 return "message";
	}
	 
	 @GetMapping("userDelete.do")
		public String userDelete(String user_id) {
			System.out.println("mypageController userDelete()" + new Date());
			
			boolean isS = service.userDelete(user_id);
			if(isS) {
				System.out.println("회원이 삭제 성공.");
			}else {
				System.out.println("회원 삭제 실패.");
			}
			
			return "mainpage/home";	
		}
	 
}
