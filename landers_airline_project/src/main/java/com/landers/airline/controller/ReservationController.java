package com.landers.airline.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.landers.airline.dto.FlightinfoDto;
import com.landers.airline.dto.ScheduleDto;
import com.landers.airline.dto.SeatDto;
import com.landers.airline.dto.TicketDto;
import com.landers.airline.service.ReservationService;

@Controller
public class ReservationController {

	
	@Autowired
	ReservationService service;
	
	@GetMapping("reservationHome.do")
	public String home(Model model) {
		System.out.println("ReservationController home() " + new Date());
		model.addAttribute("main", "reservationHome");
		
		return "reservation/main";
	}
	
	@PostMapping("schedule.do")
	public String schedule(FlightinfoDto dto,Model model, String person_num) {
		System.out.println("ReservationController schedule() " + new Date());
		System.out.println(person_num);
		List<FlightinfoDto> list = service.flightlist(dto);
		
		System.out.println(list.toString());
		
		model.addAttribute("list",list);
		model.addAttribute("person_num",person_num);
		model.addAttribute("main", "search");
		
		return "reservation/main";
	}
		//String scheduleMsg = "";
		//if(isS) {
		//	scheduleMsg = "SCHEDULE_SUCCESS";
		//}else {
		//	scheduleMsg = "SCHEDULE_FAIL";
		//}
		
		//model.addAttribute("scheduleMsg",scheduleMsg);
		
		//return "message";
		
	@PostMapping("seat.do")
	public String seat(int flight_id, Model model, ScheduleDto dto) {
		
		boolean isS = service.schedule(dto);
		List<SeatDto> list = service.seatlist(flight_id);
		
		
		//System.out.println(list.toString());
		
		model.addAttribute("list",list);
		model.addAttribute("main", "seat");
		
		return "reservation/main";
	}
	
	@RequestMapping(value = "seatselect.do", method = RequestMethod.POST)
	public String seatselect(@RequestParam(value = "selectedSeats") List<String> selectedSeats,
	                         @RequestParam(value = "flightId") int flightId, int person_num, Model model) {
	    for (String string : selectedSeats) {
	    	System.out.println("string : "+string);
		}
	    
	   //int count = service.seatselect(selectedSeats,flightId);
	    FlightinfoDto dto = service.flightInfo(flightId);
	    
	   
	    
	    model.addAttribute("flightId",flightId);
	    model.addAttribute("selectedSeats",selectedSeats);
	    model.addAttribute("person_num",person_num);
	    model.addAttribute("main", "pay");
	    model.addAttribute("dto",dto);
	
	    return "reservation/main";
	}
	
	@RequestMapping(value = "payresult.do", method = RequestMethod.GET)
	public String payresult(@RequestParam(value = "selectedSeats") List<String> selectedSeats,
	                         @RequestParam(value = "flight_id") int flight_id, 
	                         @RequestParam(value = "final_price") String final_price,
	                         Model model,
	                         TicketDto dto) {
		
		 for (String string : selectedSeats) {
		    	System.out.println("string : "+string);
			}
		 System.out.println(flight_id);
		 System.out.println(final_price);
		 
		 
		 int count = service.seatselect(selectedSeats,flight_id);
		 System.out.println(count);
		 int ccount = service.ticket(dto);
		 System.out.println(ccount);
		 
		 FlightinfoDto flight = service.flightInfo(flight_id);
		 
		// TicketDto ticket = service.ticketinfo(flight_id);
		 
		// model.addAttribute("ticket",ticket);
		 model.addAttribute("selectedSeats", selectedSeats);
		 model.addAttribute("final_price", final_price);
		 model.addAttribute("flight",flight);
		 model.addAttribute("main", "payresult");
		 
		 return "reservation/main";
	}

}
