package com.landers.airline.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.landers.airline.dto.BbsParam;
import com.landers.airline.dto.RefundDto;
import com.landers.airline.dto.TicketDto;
import com.landers.airline.dto.TicketParam;
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
		model.addAttribute("main", "mypageHome");

		
		return "mypage/main";
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
	 public String userUpdate(UserDto dto, Model model, HttpServletRequest request) { 
		 
		 System.out.println("mypageController userUpdate() " + new Date());
	 
		 boolean isS = service.userUpdate(dto); 
		 String updateMsg = "UPDATE_SUCCESS";
		 if(isS == false) { updateMsg = "UPDATE_FAIL"; }
		 
		 request.getSession().invalidate(); //Session 삭제
		 
		 model.addAttribute("updateMsg", updateMsg);
		 model.addAttribute("user_id", dto);
	 
		 return "message";
	}
	 
	/*
	 * @GetMapping("userDelete.do") public String userDelete(String user_id) {
	 * System.out.println("mypageController userDelete()" + new Date());
	 * 
	 * boolean isS = service.userDelete(user_id); if(isS) {
	 * System.out.println("회원이 삭제 성공."); }else { System.out.println("회원 삭제 실패."); }
	 * 
	 * return "mainpage/home"; }
	 */
	 
	 @GetMapping("userDelete.do")
	 public String userDelete(String user_id, Model model, HttpServletRequest request) { 
		 
		 System.out.println("mypageController userDelete() " + new Date());
	 
		 boolean isS = service.userDelete(user_id); 
		 String deleteMsg = "DELETE_SUCCESS";
		 if(isS == false) { deleteMsg = "DELETE_FAIL"; }
		 
		 model.addAttribute("deleteMsg", deleteMsg);
		 model.addAttribute("user_id", user_id);
		 
		 request.getSession().invalidate(); //Session 삭제
		 
	 
		 return "message";
	}
	 
	 @GetMapping("myTicket.do")
		public String myTicket( Model model, TicketParam param) {
			System.out.println("mypageController TicketList " + new Date());
			List<TicketDto> list = service.Ticketlist(param);
			System.out.println(list.toString());
			
			// 글의 총수
			int count = service.allTicket(param);	// 23		
			// 페이지 계산
			int pageTicket = count / 10;	// 2
			if((count % 10) > 0) {
				pageTicket = pageTicket + 1;	// 2 + 1
			}	
			
			model.addAttribute("list",list);
			model.addAttribute("pageTicket", pageTicket);
			model.addAttribute("param", param);
			model.addAttribute("main", "userReservation");

					
			return "mypage/main"; 
		}
	 
	 @GetMapping("myRefund.do")
		public String myRefund(RefundDto dto, Model model) {
			System.out.println("mypageController myRefund " + new Date());
			
			List<RefundDto> list = service.myRefund(dto);
			System.out.println(list.toString());
			
			model.addAttribute("list",list);
			model.addAttribute("main", "userRefund");

					
			return "mypage/main"; 
		}
	 
	 
	 @PostMapping("userRefund.do")
	 public String userRefund(RefundDto dto, Model model, HttpServletRequest request) { 
		 
		 System.out.println("mypageController userRefund() " + new Date());

	 
		 boolean isS = service.userRefund(dto); 
		 String refundMsg = "REFUND_SUCCESS";
		 if(isS == false) { refundMsg = "REFUND_FAIL"; }
		 

		 model.addAttribute("refundMsg", refundMsg);
		 model.addAttribute("user_id", dto);
		 
	 
		 return "message";
	}
	 
}
