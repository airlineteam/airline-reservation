package com.landers.airline.controller;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.landers.airline.dto.CalendarDto;
import com.landers.airline.dto.UserDto;
import com.landers.airline.service.MytripService;

import util.CalendarUtil;
import org.springframework.web.bind.annotation.RequestBody;


@Controller
public class MytripController {
   
   @Autowired
   MytripService service;
   /*
   @GetMapping("mytrip.do")
   public String home(Model model, HttpSession session, CalendarDto dto) {
      System.out.println("MytripController home() " + new Date());
      
      UserDto login = (UserDto)session.getAttribute("login");
      
      // login check
      
      List<CalendarDto> list = service.insertmytrip(dto);
      
      model.addAttribute("list", list);      
      model.addAttribute("main", "mytripHome");
      
      return "mytrip/main";
   }
   */
   @GetMapping("mytrip.do")
   public String calendarlist(Model model, HttpServletRequest request, String syear, String smonth, CalendarDto dto) {
      System.out.println("MytripController calendarlist() " + new Date());
      System.out.println(syear + "/" + smonth);
      
      UserDto login = (UserDto)request.getSession().getAttribute("login");
      if(login == null || login.getUser_id().equals("")) {
    	  return "redirect:/login.do";
      }
      
      
      dto.setUser_id(login.getUser_id());
      
      
      
      Calendar cal = Calendar.getInstance();
	  cal.set(Calendar.DATE, 1);
	  
   // 현재 연도와 월을 구한다	-> 처음 이 페이지가 실행시에 적용
	int year = cal.get(Calendar.YEAR);
	if(syear != null){	// 넘어 온 파라미터 값이 있음
		year = Integer.parseInt(syear);
	}
	int month = cal.get(Calendar.MONTH) + 1;	// 0 ~ 11 까지이므로
	if(smonth != null){
		month = Integer.parseInt(smonth);
	}
	
	if(month < 1){
		month = 12;
		year--;
	}
	if(month > 12){
		month = 1;
		year++;
	}
	
	System.out.println(year + " " + month);
	cal.set(year, month-1, 1);
	
	// 요일
	int dayOfWeek = cal.get(Calendar.DAY_OF_WEEK);
	
	// <<	year--
		String pp = String.format("<a href='mytrip.do?syear=%d&smonth=%d' style='text-decoration:none'>"
								+ 		"<img src='./images/left.png' width='20px' height='20px'>"
								+ "</a>",  year-1, month);
		
		// <	month--
		String p = String.format("<a href='mytrip.do?syear=%d&smonth=%d' style='text-decoration:none'>"
								+ 		"<img src='./images/prev.png' width='20px' height='20px'>"
								+ "</a>",  year, month-1);
		
		// >	month++
		String n = String.format("<a href='mytrip.do?syear=%d&smonth=%d' style='text-decoration:none'>"
								+ 		"<img src='./images/next.png' width='20px' height='20px'>"
								+ "</a>",  year, month+1);
		
		// >>	year++
		String nn = String.format("<a href='mytrip.do?syear=%d&smonth=%d' style='text-decoration:none'>"
								+ 		"<img src='./images/last.png' width='20px' height='20px'>"
								+ "</a>",  year+1, month);
      

      
      String wdate = "";
      
      
      wdate = year + CalendarUtil.two(month + "");      
      dto.setWdate(wdate);

      //System.out.println(dto.toString());
      
      List<CalendarDto> list = service.insertmytrip(dto);      
      
      System.out.println(list.toString());
      
      model.addAttribute("main", "mytripHome");
      
      model.addAttribute("list", list);
      model.addAttribute("year", year);
      model.addAttribute("month", month);
      
      model.addAttribute("pp", pp);
	  model.addAttribute("p", p);
	  model.addAttribute("n", n);
	  model.addAttribute("nn", nn);
	  model.addAttribute("cal", cal);
	  model.addAttribute("dayOfWeek", dayOfWeek);
            
      return "mytrip/main";
   }
   
   @GetMapping("calendarwrite.do")
   public String calendarwrite(Model model, String year, String  month, String day) {
	   System.out.println("MytripController calendarwrite() " + new Date());
	   System.out.println(year + month + day);
	   
	   
	   model.addAttribute("year", year);
	   model.addAttribute("month", month);
	   model.addAttribute("day", day);
	   model.addAttribute("main","calwrite");
	   
	   return "mytrip/main";
   }
   
   @PostMapping("calendarwriteAf.do")
   public String calendarwriteAf(Model model, CalendarDto dto, String date, String time) {
	   System.out.println("MytripController calendarwriteAf() " + new Date());
//	   System.out.println(time);
	   
	   String wdate = date.replace("-", "") + time.replace(":", "");
	   dto.setWdate(wdate);
	  
	   
	   System.out.println(dto.toString());
	   
	   boolean isS = service.writemytrip(dto);
	   System.out.println(isS);
	   
	   return "redirect:/mytrip.do";
   }
   
   // detail
   @GetMapping("/calendardetail.do")
   public String calendardetail(Model model, int seq) {
       System.out.println("MytripController calendarwriteAf() " + new Date());
      
       CalendarDto dto = service.showmytrip(seq);
      
       model.addAttribute("dto", dto);
       model.addAttribute("main", "caldetail");
      
       return "mytrip/main";
   }
   
   @GetMapping("caldelete.do")
   public String calendardelete(Model model, int seq) {
	   System.out.println("MytripController calendardelete() " + new Date());
	   boolean isS = service.deletemytrip(seq);
	   

       model.addAttribute("main", "caldelete");
	   
	   return "redirect:/mytrip.do";
   }
   
   @GetMapping("calupdate.do")
   public String calendarupdate(Model model, int seq) {
	   System.out.println("MytripController calendarupdate() " + new Date());
	   CalendarDto dto = service.showmytrip(seq);
	   String year = dto.getWdate().substring(0, 4);
	   String month = dto.getWdate().substring(4, 6);
	   String day = dto.getWdate().substring(6, 8);
	   String hour = dto.getWdate().substring(8, 10);
	   String min = dto.getWdate().substring(10);
	   System.out.println(year + month + day + hour + min);
	   
	   model.addAttribute("date", year + "-" + month + "-" + day);
	   model.addAttribute("time", hour + ":" + min);
	   model.addAttribute("dto", dto);
       model.addAttribute("main", "calupdate");
	   
	   return "mytrip/main";
   }
   
   @PostMapping("calendarupdateAf.do")
   public String calendarupdateAf(Model model,CalendarDto dto, String date, String time) {
	   System.out.println("MytripController calendarupdateAf() " + new Date());

	   String wdate = date.replace("-", "") + time.replace(":", "");
	   dto.setWdate(wdate);
	 	   
	   System.out.println(dto.toString());
	   
	   boolean isS = service.updatemytrip(dto);
	   System.out.println(isS);
	   
	   return "redirect:/mytrip.do";
   }
   
   
   
}