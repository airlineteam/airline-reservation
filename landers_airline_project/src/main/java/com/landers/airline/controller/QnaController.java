package com.landers.airline.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.landers.airline.dto.QnaDto;
import com.landers.airline.dto.QnaParam;
import com.landers.airline.service.QnaService;

@Controller
public class QnaController {

	@Autowired
	QnaService service;
	
	@GetMapping("qnalist.do")
	public String faqlist(Model model, QnaParam param) {
		System.out.println("QnaController qnalist " + new Date());
		System.out.println(param.toString());
				
		// 글목록
		List<QnaDto> list = service.qnalist(param);	
		
		// 글의 총수
		int count = service.allqna(param);	// 23		
		// 페이지 계산
		int pageQna = count / 10;	// 2
		if((count % 10) > 0) {
			pageQna = pageQna + 1;	// 2 + 1
		}		
		
		model.addAttribute("list", list);
		model.addAttribute("pageQna", pageQna);
		model.addAttribute("param", param);
		
		return "customercenter/qna/qnalist";
	}
	
	@GetMapping("qnawrite.do")
	public String qnawrite() {
		System.out.println("QnaController qnawrite " + new Date());
		return "customercenter/qna/qnawrite";
	}
	
	@PostMapping("qnawriteAf.do")
	public String qnawriteAf(QnaDto dto, Model model) {
		System.out.println("QnaController qnawriteAf " + new Date());
		
		boolean isS = service.qnawrite(dto);
		
		return "redirect:/qnalist.do";
	}
	
	@GetMapping("qnadetail.do")
	public String qnadetail(int seq, Model model) {
		System.out.println("QnaController qnadetail " + new Date());
		
		QnaDto dto = service.qnadetail(seq);
		model.addAttribute("dto", dto);
		
		return "customercenter/qna/qnadetail";
	}

	
	@GetMapping("qnaanswer.do")
	public String qnaanswer(int seq, Model model) {
		System.out.println("QnaController qnaanswer() " + new Date());
		
		QnaDto dto = service.qnadetail(seq);		
		model.addAttribute("qnadto", dto);
		
		return "customercenter/qna/qnaanswer";
	}
	
	@PostMapping("qnaanswerAf.do")
	public String qnaanswerAf(QnaDto dto, Model model) {
		System.out.println("QnaController qnaanswerAf() " + new Date());
		
		boolean isS = service.QnaAnswer(dto);
		String answerMsg = "ANSWER_SUCCESS";
		if(isS == false) {
			answerMsg = "ANSWER_FAIL";
		}
		model.addAttribute("qnaanswerMsg", answerMsg);
		model.addAttribute("seq", dto.getSeq());
		
		return "message";
	}
	
	@GetMapping("qnaupdate.do")
	public String qnaupdate(int seq, Model model) {
		System.out.println("QnaController qnaupdate() " + new Date());
		
		QnaDto dto = service.qnadetail(seq);		
		model.addAttribute("dto", dto);
		
		return "customercenter/qna/qnaupdate";
	}
	
	@GetMapping("qnaupdateAf.do")
	public String qnaupdateAf(QnaDto dto, Model model) {
		System.out.println("QnaController qnaupdateAf() " + new Date());
		
		boolean isS = service.qnaupdate(dto);
		String qnaupdateMsg = "UPDATE_SUCCESS";
		if(!isS) {
			qnaupdateMsg = "UPDATE_FAIL";
		}
		model.addAttribute("qnaupdateMsg", qnaupdateMsg);
		model.addAttribute("seq", dto.getSeq());
		
		return "message";
	}
	@GetMapping("qnadelete.do")
	public String qnadelete(int seq) {
		System.out.println("QnaController qnadelete() " + new Date());
		
		boolean isS = service.qnadelete(seq);
		if(isS) {
			System.out.println("글삭제 성공!");
		}else {
			System.out.println("글삭제 실패");
		}
		
		return "redirect:/qnalist.do";	
	}
	
}







