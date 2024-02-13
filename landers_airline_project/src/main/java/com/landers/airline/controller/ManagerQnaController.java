package com.landers.airline.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.landers.airline.dto.ManagerQnaDto;
import com.landers.airline.dto.ManagerQnaParam;
import com.landers.airline.dto.QnaDto;
import com.landers.airline.dto.QnaParam;
import com.landers.airline.service.ManagerQnaService;

@Controller
public class ManagerQnaController {

	@Autowired
	ManagerQnaService service;
	
	@GetMapping("mqnalist.do")
	public String faqlist(Model model, ManagerQnaParam param) {
		System.out.println("QnaController qnalist " + new Date());
		System.out.println(param.toString());
				
		// 글목록
		List<ManagerQnaDto> list = service.qnalist(param);	
		
		// 글의 총수
		int count = service.allqna(param);	// 23		
		// 페이지 계산
		int mpageQna = count / 10;	// 2
		if((count % 10) > 0) {
			mpageQna = mpageQna + 1;	// 2 + 1
		}		
		
		model.addAttribute("list", list);
		model.addAttribute("mpageQna", mpageQna);
		model.addAttribute("param", param);
		model.addAttribute("main","managerqna/mqnalist");
	
		
		return "managerpage/main";
	}
	
	
	@GetMapping("mqnadetail.do")
	public String qnadetail(int seq, Model model) {
		System.out.println("QnaController qnadetail " + new Date());
		
		ManagerQnaDto dto = service.qnadetail(seq);
		model.addAttribute("dto", dto);
		
		model.addAttribute("main","managerqna/mqnadetail");
		
		return "managerpage/main";
	}
	
	@GetMapping("mqnadelete.do")
	public String qnadelete(int seq) {
		System.out.println("QnaController qnadelete() " + new Date());
		
		boolean isS = service.qnadelete(seq);
		if(isS) {
			System.out.println("글삭제 성공!");
		}else {
			System.out.println("글삭제 실패");
		}
		
		return "redirect:/mqnalist.do";	
	}
}
