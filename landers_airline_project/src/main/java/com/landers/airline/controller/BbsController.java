package com.landers.airline.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.landers.airline.dto.BbsDto;
import com.landers.airline.dto.BbsParam;
import com.landers.airline.service.BbsService;



@Controller
public class BbsController {

	@Autowired
	BbsService service;
	
	@GetMapping("bbslist.do")
	public String bbslist(Model model, BbsParam param) {
		System.out.println("BbsController bbslist " + new Date());
		System.out.println(param.toString());
				
		// 글목록
		List<BbsDto> list = service.bbslist(param);	
		
		// 글의 총수
		int count = service.allbbs(param);	// 23		
		// 페이지 계산
		int pageBbs = count / 10;	// 2
		if((count % 10) > 0) {
			pageBbs = pageBbs + 1;	// 2 + 1
		}		
		
		model.addAttribute("list", list);
		model.addAttribute("pageBbs", pageBbs);
		model.addAttribute("param", param);
		model.addAttribute("main","bbs/bbslist");
		
		return "customercenter/main";
	}
	
	@GetMapping("bbswrite.do")
	public String bbwrite(Model model) {
		System.out.println("BbsController bbswrite " + new Date());

		model.addAttribute("main","bbs/bbswrite");
		
		return "customercenter/main";
	}
	
	@PostMapping("bbswriteAf.do")
	public String bbswriteAf(BbsDto dto, Model model) {
		System.out.println("BbsController bbswriteAf " + new Date());
		
		boolean isS = service.bbswrite(dto);
		String bbswriteMsg = "BBSWRITE_SUCCESS";
		if(isS == false) {
			bbswriteMsg = "BBSWRITE_FAIL";
		}
		model.addAttribute("bbswriteMsg", bbswriteMsg);
		
		return "message";
	}
	
	@GetMapping("bbsdetail.do")
	public String bbsdetail(int seq, Model model) {
		System.out.println("BbsController bbsdetail " + new Date());
		
		BbsDto dto = service.bbsdetail(seq);
		boolean isS = service.bbsreadcount(seq);
		model.addAttribute("dto", dto);
		model.addAttribute("main","bbs/bbsdetail");
		
		return "customercenter/main";
	}
	
	@GetMapping("bbsanswer.do")
	public String bbsanswer(int seq, Model model) {
		System.out.println("BbsController bbsdetail() " + new Date());
		
		BbsDto dto = service.bbsdetail(seq);		
		model.addAttribute("bbsdto", dto);
		model.addAttribute("main","bbs/bbsanswer");
		
		return "customercenter/main";
	}
	
	@PostMapping("bbsanswerAf.do")
	public String bbsanswerAf(BbsDto dto, Model model) {
		System.out.println("BbsController bbsanswerAf() " + new Date());
		
		boolean isS = service.BbsAnswer(dto);
		String answerMsg = "ANSWER_SUCCESS";
		if(isS == false) {
			answerMsg = "ANSWER_FAIL";
		}
		model.addAttribute("answerMsg", answerMsg);
		model.addAttribute("seq", dto.getSeq());
		
		return "message";
	}
	
	@GetMapping("bbsupdate.do")
	public String bbsupdate(int seq, Model model) {
		System.out.println("BbsController bbsupdate() " + new Date());
		
		BbsDto dto = service.bbsdetail(seq);		
		model.addAttribute("dto", dto);
		model.addAttribute("main","bbs/bbsupdate");
		
		return "customercenter/main";
	}
	
	@GetMapping("bbsupdateAf.do")
	public String bbsupdateAf(BbsDto dto, Model model) {
		System.out.println("BbsController bbsupdateAf() " + new Date());
		
		boolean isS = service.bbsupdate(dto);
		String bbsupdateMsg = "UPDATE_SUCCESS";
		if(!isS) {
			bbsupdateMsg = "UPDATE_FAIL";
		}
		model.addAttribute("bbsupdateMsg", bbsupdateMsg);
		model.addAttribute("seq", dto.getSeq());
		
		return "message";
	}
	@GetMapping("bbsdelete.do")
	public String bbsdelete(int seq) {
		System.out.println("BbsController bbsdelete() " + new Date());
		
		boolean isS = service.bbsdelete(seq);
		if(isS) {
			System.out.println("글삭제 성공!");
		}else {
			System.out.println("글삭제 실패");
		}
		
		return "redirect:/bbslist.do";	
	}
	
}







