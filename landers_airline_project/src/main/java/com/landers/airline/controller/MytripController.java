package com.landers.airline.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.landers.airline.dto.CalendarDto;
import com.landers.airline.dto.UserDto;
import com.landers.airline.service.MytripService;

@Controller
public class MytripController {
   
   @Autowired
   MytripService service;
   
   @GetMapping("mytrip.do")
   public String home(Model model, HttpSession session) {
      System.out.println("MytripController home() " + new Date());
      
      UserDto login = (UserDto)session.getAttribute("login");
      
      // login check
      
      List<CalendarDto> list = service.insertmytrip(login.getUser_id());
      
      model.addAttribute("list", list);      
      model.addAttribute("main", "mytripHome");
      
      return "mytrip/main";
   }
   
   @PostMapping("calendarlist.do")
   public String calendarlist(Model model, HttpSession session) {
      System.out.println("MytripController calendarlist() " + new Date());
      
      UserDto login = (UserDto)session.getAttribute("login");

      List<CalendarDto> list = service.insertmytrip(login.getUser_id());
      
      System.out.println(list.toString());
      
      model.addAttribute("main", "mytripHome");
      
      model.addAttribute("list", list);
            
      return "mytrip/main";
   }
}