package com.landers.airline.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.landers.airline.dto.FlightinfoDto;
import com.landers.airline.dto.SeatDto;
import com.landers.airline.service.ReservationService;

@Controller
public class ReservationController {

	
	@Autowired
	ReservationService service;
	
	@GetMapping("reservationHome.do")
	public String home(Model model) {
		System.out.println("ReservationController home() " + new Date());
		model.addAttribute("main", "reservation/reservationHome");
		
		return "mainpage/main";
	}
	
	@PostMapping("schedule.do")
	public String schedule(FlightinfoDto dto, Model model, String person_num) {
		System.out.println("ReservationController schedule() " + new Date());
		System.out.println(person_num);
		List<FlightinfoDto> list = service.flightlist(dto);
		
		System.out.println(list.toString());
		
		model.addAttribute("list",list);
		model.addAttribute("person_num",person_num);
		
		return "mainpage/reservation/search";
	}
		//String scheduleMsg = "";
		//if(isS) {
		//	scheduleMsg = "SCHEDULE_SUCCESS";
		//}else {
		//	scheduleMsg = "SCHEDULE_FAIL";
		//}
		
		//model.addAttribute("scheduleMsg",scheduleMsg);
		
		//return "message";
		
	@GetMapping("seat.do")
	public String seat(int flight_id, Model model, String person_num) {
		
		List<SeatDto> list = service.seatlist(flight_id);
		
		//System.out.println(list.toString());
		
		model.addAttribute("list",list);
		
		return "mainpage/reservation/seat";
	}
	
	@GetMapping("seatselect.do")
	public String seatselect(String selectedSeats, Model model) {
		System.out.println(selectedSeats);
		int count = 0;
		 String[] seatsArray = selectedSeats.split(",");

		    // 각 좌석에 대한 처리
		    for (String seat : seatsArray) {
		        System.out.println(seat);
		        count = service.seatselect(seat);
		    }
		
		return "mainpage/reservation/pay";
	}
	
}
